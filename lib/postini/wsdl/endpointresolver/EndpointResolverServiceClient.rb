#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/EndpointResolverDriver.rb'


module Postini::WSDL::EndpointResolver

endpoint_url = ARGV.shift
obj = EndpointResolverPort.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetServiceEndpoint(parameters)
#
# ARGS
#   parameters      GetServiceEndpoint - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}GetServiceEndpoint
#
# RETURNS
#   parameters      GetServiceEndpointResponse - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}GetServiceEndpointResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}AdminBlockException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}NoSuchKeyException
#   fault           UnknownEmailException - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}UnknownEmailException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}UnknownInternalException
#
parameters = nil
puts obj.getServiceEndpoint(parameters)




end
