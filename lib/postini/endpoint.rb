# See #Postini::Endpoint 

require 'postini/api/endpointresolver/EndpointResolverDriver'

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
      def get_endpoint( user, service = Postini::API::EndpointResolver::Service::V2AutomatedBatch )
        # Only run if needed
        if @postini_end_point_uri.nil?
          remote = Postini::API::EndpointResolver::EndpointResolverPort.new
          request = Postini::API::EndpointResolver::GetServiceEndpoint.new(
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
