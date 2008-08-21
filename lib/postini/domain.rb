require 'postini/api/automatedbatch/AutomatedBatchDriver'

module Postini
  
  # Represents the functions to perform on a domain
  #
  # TODO: Definitely improve this documentation
  class Domain
    
    attr_accessor :id, :name, :org, :substrip
    
    class << self
      
      # Return an instance of #Domain with all the attributes populated
      def find( domain )
        remote = automated_batch_port
        request = Postini::API::AutomatedBatch::Displaydomain.new( Postini.auth, domain )
        response = remote.displaydomain( request )
        domain_record = response.domainRecord
        
        # Don't give back false positives
        if domain_record.domainid == ""
          return nil
        end
        
        new(
          :name => domain_record.domainname,
          :id => domain_record.domainid,
          :org => domain_record.org,
          :substrip => domain_record.substrip
        )
      end
      
      # Return a remote port with debug enabled if required
      def automated_batch_port #:nodoc:
        remote = Postini::API::AutomatedBatch::AutomatedBatchPort.new( Postini.endpoint_uri )
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
    
    # Create a new domain in the system. Requires +name+ and +org+ to be set.
    # This method will through a SOAP exception if the domain could not be
    # added.
    def create
      return false unless new?
      
      # TODO: Add improved validations here
      return false if @name.nil? || @org.nil?
      
      remote = self.class.automated_batch_port
      args = Postini::API::AutomatedBatch::Adddomainargs.new( @name )
      request = Postini::API::AutomatedBatch::Adddomain.new(
        Postini.auth, @org, args
      )
      remote.adddomain( request )
    end
    
  end
  
end
