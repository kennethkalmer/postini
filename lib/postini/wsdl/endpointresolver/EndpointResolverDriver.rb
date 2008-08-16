require File.dirname(__FILE__) + '/EndpointResolver.rb'
require File.dirname(__FILE__) + '/EndpointResolverMappingRegistry.rb'
require 'soap/rpc/driver'

module Postini::WSDL::EndpointResolver

class EndpointResolverPort < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://api-meta.postini.com/api2/endpointresolver"

  Methods = [
    [ "",
      "getServiceEndpoint",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://postini.com/PSTN/SOAPAPI/v2/endpointresolver", "GetServiceEndpoint"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://postini.com/PSTN/SOAPAPI/v2/endpointresolver", "GetServiceEndpointResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"Postini::WSDL::EndpointResolver::UnknownInternalException"=>{:use=>"literal", :namespace=>nil, :name=>"UnknownInternalException", :encodingstyle=>"document", :ns=>"http://postini.com/PSTN/SOAPAPI/v2/endpointresolver"}, "Postini::WSDL::EndpointResolver::AdminBlockException"=>{:use=>"literal", :namespace=>nil, :name=>"AdminBlockException", :encodingstyle=>"document", :ns=>"http://postini.com/PSTN/SOAPAPI/v2/endpointresolver"}, "Postini::WSDL::EndpointResolver::MissingElementException"=>{:use=>"literal", :namespace=>nil, :name=>"MissingElementException", :encodingstyle=>"document", :ns=>"http://postini.com/PSTN/SOAPAPI/v2/endpointresolver"}, "Postini::WSDL::EndpointResolver::InvalidValueException"=>{:use=>"literal", :namespace=>nil, :name=>"InvalidValueException", :encodingstyle=>"document", :ns=>"http://postini.com/PSTN/SOAPAPI/v2/endpointresolver"}, "Postini::WSDL::EndpointResolver::UnknownEmailException"=>{:use=>"literal", :namespace=>nil, :name=>"UnknownEmailException", :encodingstyle=>"document", :ns=>"http://postini.com/PSTN/SOAPAPI/v2/endpointresolver"}, "Postini::WSDL::EndpointResolver::MalformedKeyException"=>{:use=>"literal", :namespace=>nil, :name=>"MalformedKeyException", :encodingstyle=>"document", :ns=>"http://postini.com/PSTN/SOAPAPI/v2/endpointresolver"}, "Postini::WSDL::EndpointResolver::InternalException"=>{:use=>"literal", :namespace=>nil, :name=>"InternalException", :encodingstyle=>"document", :ns=>"http://postini.com/PSTN/SOAPAPI/v2/endpointresolver"}, "Postini::WSDL::EndpointResolver::NoSuchKeyException"=>{:use=>"literal", :namespace=>nil, :name=>"NoSuchKeyException", :encodingstyle=>"document", :ns=>"http://postini.com/PSTN/SOAPAPI/v2/endpointresolver"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = EndpointResolverMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = EndpointResolverMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
