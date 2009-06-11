module Postini
  class EndpointResolverService < Handsoap::Service
    
    include ConfigurationCheck
    
    endpoint Postini::Endpoints::RESOLVER

    on_create_document do |doc|
      doc.alias 'end', 'https://api-meta.postini.com/api2/endpointresolver'
    end

    # public methods

    def get_service_endpoint( email, service = "v2AutomatedBatch" )
      response = invoke("end:GetServiceEndpoint") do |message|
        message.add( "apiKey", Postini.api_key )
        message.add( "email", email )
        message.add( "service", service )
      end

      parse_get_service_endpoint_result( response.document.xpath('//tns:GetServiceEndpointResponse', tns).first )
    end
    requires_configured :get_service_endpoint

    private

    def tns
      { 'tns' => 'http://postini.com/PSTN/SOAPAPI/v2/endpointresolver' }
    end

    # helpers

    def parse_get_service_endpoint_result( node )
      #<tns:GetServiceEndpointResponse>
      #   <EndpointURI>https://api-s200.postini.com/api2/automatedbatch</EndpointURI>
      #</tns:GetServiceEndpointResponse>

      node.xpath('./EndpointURI/text()').to_s
    end
  end
end
