# See #Postini::Endpoint 

require 'postini/wsdl/endpointresolver/EndpointResolverDriver'

module Postini
  
  # This mixin provides the funtionality to our Postini classes to make use
  # of the Endpoint Resolver service.
  module Endpoint
    
    def self.included( base )
      base.send( :include, InstanceMethods )
      base.extend( ClassMethods )
    end
    
    module ClassMethods
      
    end
    
    module InstanceMethods
      
      # Return the endpoint URL for the user
      def get_endpoint( user, service = Postini::WSDL::EndpointResolver::Service::V2AutomatedBatch )
        # Only run if needed
        if @postini_end_point_uri.nil?
          remote = Postini::WSDL::EndpointResolver::EndpointResolverPort.new
          request = Postini::WSDL::EndpointResolver::GetServiceEndpoint.new(
            Postini.api_key, user, service
          )
          response = remote.getServiceEndpoint( request )
          @postini_end_point_uri = response.endpointURI
        end
        
        @postini_end_point_uri
      end
      
    end
  end
  
end
