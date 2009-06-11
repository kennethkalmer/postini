require 'postini/api/automatedbatch/AutomatedBatchDriver'
require 'postini/users/aliases'

module Postini

  # This class represents a user in the Postini systems.
  #
  # TODO: Expand documentation
  class User

    include Helpers::Attributes

    has_attributes :id, :message_count, :message_limit, :orgid, :create_method,
      :virus_notify, :type => :int
    has_attributes :active, :junkmail_filter, :message_encryption,
      :message_limited, :virus_state, :weblocked, :welcome_count,
      :wireless_state, :type => :bool
    has_attributes :address, :notice_address, :initial_password, :password,
      :lang_locale, :timezone, :orgtag, :ext_encrypt
    has_attributes :approved_recipients, :approved_senders, :blocked_senders,
      :type => :array
    has_attributes :created_date, :lastmod_date, :type => :timestamp
    has_attributes :filter_adult, :filter_bulk, :filter_getrich,
      :filter_offers, :filter_racial, :type => :filter

    include Users::Aliases

    class << self

      # Return a new instance of the user
      # TODO: Make this take various options just like ActiveRecord
      def find( user )
        remote = automated_batch_port( user )
        request = Postini::API::AutomatedBatch::Displayuser.new( Postini.auth, user )
        response = remote.displayuser( request )
        user_record = response.userRecord

        attributes = {}
        user_record.instance_variables.each do |var|
          attributes[ var.sub('@','').to_sym ] = user_record.instance_variable_get(var)
        end

        # fix id
        attributes[:id] = attributes.delete(:user_id)

        new( attributes )
      end

      # Permanently remove the user from Postini
      def destroy( address )
        remote = automated_batch_port( address )
        request = Postini::API::AutomatedBatch::Deleteuser.new( Postini.auth, address )
        remote.deleteuser( request )
      end

      # Return a remote port for the address, with debug enabled if required
      def automated_batch_port( address = nil ) #:nodoc:
        remote = Postini::API::AutomatedBatch::AutomatedBatchPort.new( Postini.endpoint_uri( address ) )
        remote.wiredump_dev = Postini.soap4r_wiredump_dev if Postini.soap4r_wiredump?
        remote
      end

    end

    def new?
      self.id.nil?
    end

    # Create the new user. Pass +welcome+ as '1' to have a welcome mail sent
    # to the user. The org for the user will be pulled from the org attribute
    def create( welcome = 0 )
      return false unless new?

      # TODO: Add missing validations here
      return false if self.address.nil? || self.orgid.nil?

      remote = self.class.automated_batch_port
      args = Postini::API::AutomatedBatch::Adduserargs.new( self.orgid, welcome )
      request = Postini::API::AutomatedBatch::Adduser.new( Postini.auth, self.address, args )

      begin
        remote.adduser( request )
      rescue SOAP::FaultError => e
        if e.message =~ /clashes with an existing address or alias/
          raise DuplicateAddress, e.message
        elsif e.message =~ /The domain must be added before users or user aliases can be added/
          raise UnknownDomain, e.message
        else
          raise e
        end
      end
    end

    # Remove the user from Postini
    def destroy
      return false if new?

      self.class.destroy( self.address )
    end

  end
end
