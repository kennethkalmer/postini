require 'postini/api/automatedbatch/AutomatedBatchDriver'

module Postini
  
  # This class represents a user in the Postini systems.
  #
  # TODO: Expand documentation
  class User
    
    attr_accessor :id, :active, :address, :approved_recipients, 
      :approved_senders, :blocked_senders, :create_method, :created_date,
      :filter_adult, :filter_bulk, :filter_getrich, :filter_offers, 
      :filter_racial, :initial_password, :junkmail_filter, :lang_locale,
      :lastmod_date, :message_encryption, :message_limit, :message_limited,
      :message_count, :notice_address, :orgid, :password, :timezone, 
      :virus_notify, :virus_state, :weblocked, :welcome_count, :wireless_state
    
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
    
    # Setup a new instance with the combination of attributes set
    def initialize( attributes = {} )
      attributes.each_pair do |k,v|
        instance_variable_set "@#{k.to_s}", v
      end
    end
    
    def new?
      @id.nil?
    end
    
    # Create the new user. Pass +welcome+ as '1' to have a welcome mail sent
    # to the user. The org for the user will be pulled from the org attribute
    def create( welcome = 0 )
      return false unless new?
      
      # TODO: Add missing validations here
      return false if @address.nil? || @org.nil?
      
      remote = automated_batch_port
      args = Postini::API::AutomatedBatch::Adduserargs.new( @org, welcome )
      request = Postini::API::AutomatedBatch::Adduser.new( Postini.auth, @address, args )
      remote.adduser( request )
    end
    
    # Remove the user from Postini
    def destroy
      return false if new?
      
      self.class.destroy( @address )
    end
    
    # Return the list of aliases for the mailbox
    def aliases
      if @aliases.nil?
        remote = self.class.automated_batch_port( @address )
        query = Postini::API::AutomatedBatch::ListusersqueryParams.new
        query.aliases = 1
        query.childorgs = 1
        query.primaryqs = @address
        query.targetOrg = @orgid
        request = Postini::API::AutomatedBatch::Listusers.new(
          Postini.auth,
          "ALL",
          query
        )
        
        response = remote.listusers( request )
        
        @aliases = []
        response.each { |user_record| @aliases << user_record.address }
      end
      
      @aliases
    end
    
    # Add an alias to this user
    def add_alias( address )
      @aliases = nil # clear our cache
      remote = self.class.automated_batch_port( @address )
      request = Postini::API::AutomatedBatch::Addalias.new( Postini.auth, @address, address )
      remote.addalias( request )
    end
    
    # Removes the specified alias
    def remove_alias( address )
      @aliases = nil # clear our cache
      remote = self.class.automated_batch_port( @address )
      request = Postini::API::AutomatedBatch::Deletealias.new( Postini.auth, address )
      remote.deletealias( request )
    end
    
    # Removes all aliases from the user
    def clear_aliases
      aliases.each do |address|
        remove_alias( address )
      end
    end
  end
end
