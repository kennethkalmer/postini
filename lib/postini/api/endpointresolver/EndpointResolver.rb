require 'xsd/qname'

module Postini; module API; module EndpointResolver #:nodoc: all


# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}AdminBlockException
#   message - SOAP::SOAPString
class AdminBlockException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}GetServiceEndpoint
#   apiKey - SOAP::SOAPString
#   email - SOAP::SOAPString
#   service - Postini::API::EndpointResolver::Service
class GetServiceEndpoint
  attr_accessor :apiKey
  attr_accessor :email
  attr_accessor :service

  def initialize(apiKey = nil, email = nil, service = nil)
    @apiKey = apiKey
    @email = email
    @service = service
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}GetServiceEndpointResponse
#   endpointURI - SOAP::SOAPString
class GetServiceEndpointResponse
  attr_accessor :endpointURI

  def initialize(endpointURI = nil)
    @endpointURI = endpointURI
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}InternalException
#   message - SOAP::SOAPString
class InternalException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}InvalidValueException
#   message - SOAP::SOAPString
class InvalidValueException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}MalformedKeyException
#   message - SOAP::SOAPString
class MalformedKeyException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}MissingElementException
#   message - SOAP::SOAPString
class MissingElementException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}NoSuchKeyException
#   message - SOAP::SOAPString
class NoSuchKeyException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}UnknownEmailException
#   message - SOAP::SOAPString
class UnknownEmailException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}UnknownInternalException
#   message - SOAP::SOAPString
class UnknownInternalException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/endpointresolver}service
class Service < ::String
  V1 = Service.new("v1")
  V2AutomatedBatch = Service.new("v2AutomatedBatch")
  V2PersonalArchive = Service.new("v2PersonalArchive")
  V2UserSync = Service.new("v2UserSync")
end


end; end; end
