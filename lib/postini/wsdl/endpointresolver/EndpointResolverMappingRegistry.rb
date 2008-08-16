require File.dirname(__FILE__) + '/EndpointResolver.rb'
require 'soap/mapping'

module Postini; module WSDL; module EndpointResolver

module EndpointResolverMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsEndpointresolver = "http://postini.com/PSTN/SOAPAPI/v2/endpointresolver"

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::AdminBlockException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "AdminBlockException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::GetServiceEndpoint,
    :schema_type => XSD::QName.new(NsEndpointresolver, "GetServiceEndpoint"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(nil, "apiKey")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["service", ["Postini::WSDL::EndpointResolver::Service", XSD::QName.new(nil, "service")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::GetServiceEndpointResponse,
    :schema_type => XSD::QName.new(NsEndpointresolver, "GetServiceEndpointResponse"),
    :schema_element => [
      ["endpointURI", ["SOAP::SOAPString", XSD::QName.new(nil, "EndpointURI")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::InternalException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "InternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::InvalidValueException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "InvalidValueException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::MalformedKeyException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "MalformedKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::MissingElementException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "MissingElementException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::NoSuchKeyException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "NoSuchKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::UnknownEmailException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "UnknownEmailException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::UnknownInternalException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "UnknownInternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::WSDL::EndpointResolver::Service,
    :schema_type => XSD::QName.new(NsEndpointresolver, "service")
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::AdminBlockException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "AdminBlockException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::GetServiceEndpoint,
    :schema_type => XSD::QName.new(NsEndpointresolver, "GetServiceEndpoint"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(nil, "apiKey")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["service", ["Postini::WSDL::EndpointResolver::Service", XSD::QName.new(nil, "service")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::GetServiceEndpointResponse,
    :schema_type => XSD::QName.new(NsEndpointresolver, "GetServiceEndpointResponse"),
    :schema_element => [
      ["endpointURI", ["SOAP::SOAPString", XSD::QName.new(nil, "EndpointURI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::InternalException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "InternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::InvalidValueException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "InvalidValueException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::MalformedKeyException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "MalformedKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::MissingElementException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "MissingElementException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::NoSuchKeyException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "NoSuchKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::UnknownEmailException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "UnknownEmailException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::UnknownInternalException,
    :schema_type => XSD::QName.new(NsEndpointresolver, "UnknownInternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::Service,
    :schema_type => XSD::QName.new(NsEndpointresolver, "service")
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::AdminBlockException,
    :schema_name => XSD::QName.new(NsEndpointresolver, "AdminBlockException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::GetServiceEndpoint,
    :schema_name => XSD::QName.new(NsEndpointresolver, "GetServiceEndpoint"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(nil, "apiKey")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["service", ["Postini::WSDL::EndpointResolver::Service", XSD::QName.new(nil, "service")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::GetServiceEndpointResponse,
    :schema_name => XSD::QName.new(NsEndpointresolver, "GetServiceEndpointResponse"),
    :schema_element => [
      ["endpointURI", ["SOAP::SOAPString", XSD::QName.new(nil, "EndpointURI")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::InternalException,
    :schema_name => XSD::QName.new(NsEndpointresolver, "InternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::InvalidValueException,
    :schema_name => XSD::QName.new(NsEndpointresolver, "InvalidValueException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::MalformedKeyException,
    :schema_name => XSD::QName.new(NsEndpointresolver, "MalformedKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::MissingElementException,
    :schema_name => XSD::QName.new(NsEndpointresolver, "MissingElementException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::NoSuchKeyException,
    :schema_name => XSD::QName.new(NsEndpointresolver, "NoSuchKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::UnknownEmailException,
    :schema_name => XSD::QName.new(NsEndpointresolver, "UnknownEmailException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::WSDL::EndpointResolver::UnknownInternalException,
    :schema_name => XSD::QName.new(NsEndpointresolver, "UnknownInternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )
end

end; end; end
