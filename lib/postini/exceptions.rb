module Postini

  # Parent class of our exception hierarchy
  class Error < ::StandardError; end

  class DuplicateAddress < Error; end

  class UnknownDomain < Error; end

  # Raised if the #Postini library is not sufficiently configured.
  class NotConfigured < Error; end

  # Handle exceptions thrown by Postini
  class RemoteException < Error

    attr_reader :type, :message, :request_id

    class << self

      # Find the correct sub-class and pass the exception on
      def delegate( reason )
        if reason =~ /^(\w+):/
          type = $1
          type << 'Exception' unless type =~ /Exception$/

          if Postini.const_defined?( type )
            return Postini.const_get( type ).new( reason )
          end
        end

        return new( reason )
      end
    end

    def initialize( reason )

      if reason =~ /^(\w+):(.*)\(Request ID ([0-9A-F\-]{36})\)$/
        @type = $1
        @message = $2.strip
        @request_id = $3
      else
        @message = reason
      end
    end

    def inspect
      "#{self.class} Type: #{@type}, Message: #{@message}, Request ID: #{@request_id}"
    end

    def to_s
      inspect
    end
  end

  # Intentionally thrown exception, used to test connection level
  # operation and the ability to send exceptions.
  class StatusException < RemoteException; end

  # Specified API license key blocked for administrative reasons
  class AdminBlockException < RemoteException; end

  # Invalid authentication tokens and other auth errors
  class AuthenticationException < RemoteException; end

  # Exceptions based on those given by the batch commandline interface
  class BatchException < RemoteException; end

  # Internal exceptions caused by server-wide problems
  class InternalException < RemoteException; end

  # One or more element values does not validate
  class InvalidValueException < RemoteException; end

  # Malformed API license key
  class MalformedKeyException < RemoteException; end

  # One or more required elements is missing from the input
  class MissingElementException < RemoteException; end

  # Specified API license key does not exist
  class NoSuchKeyException < RemoteException; end

  # Exceptions caused by unhandled server-side problems
  class UnknownInternalException < RemoteException; end
end
