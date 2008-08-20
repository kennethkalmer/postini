$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

# requirements
gem 'soap4r'
require 'postini/user'
require 'postini/domain'

require 'postini/api/endpointresolver/EndpointResolverDriver'

# = Configuration
# 
#  This module just provides access to configuration details used by the rest of
# the gem.
# 
# Current configuration values are:
# * api_key
# * system_number
# * username
# * password
# * xauth
# 
# The +api_key+ is your unique API keys obtained from Postini via their Early
# Access program.
# 
#   Postini.api_key = "your48characterkey"
# 
# The +system_number+ can be any known system number (known to your account).
# The gem uses the Postini Endpoint Resolver service, but in some cases needs a 
# known system to work from. Refer to the "Locating Your System" section of the 
# Early Access documentation for more information.
# 
#   Postini.system_number = 8
# 
# The +username+ parameter is required if:
# 1. Your org is using POP authentication, and thus needs the admin user's
# authentication details, not the end-user's.
# 2. You omit the optional username and password/xauth string for the request
# 
#   Postini.username = 'administrat@jumboinc.com'
# 
# The +password+ and +xauth+ parameters are mutually exclusive, and cannot be
# used together. This library will use the +password+ if present, ignoring the
# +xauth+ string alltogether.
# 
#   Postini.password = 'secret'
#   Postini.xauth = 'format_unknown_to_author'
#
# = Debugging
# 
# Lots to debug when an API is classified as "Early access", here are different
# controls for setting the debugging verbosity
# 
# * logger = Ruby-logger compatibe logger
# * debug = true/false - Enable more verbose logging
# * soap4r_wiredump = true/false - Enable soap4r wiredumps
# * soap4r_wiredump_dev = DEV - Alternative logfile or device for SOAP4R wiredumps
# 
# Specify a 'Logger' compatible logging facility in order to use the debug 
# features of the gem. All the other settings increase the verbosity to varying
# degrees, and allow you to access some soap4r internals as well.
#
module Postini
  
  # On the fly class variable, getter and setter generation...
  %w{ 
    api_key system_number username password xauth
    logger debug soap4r_debug soap4r_debug_dev soap4r_wiredump soap4r_wiredump_dev
  }.each do |config|
    class_eval <<-EOF
      @@#{config} = nil
      def self.#{config}=( val )
        @@#{config} = val
      end
      def self.#{config}
        @@#{config}
      end
    EOF
  end
  
  class << self
    
    # Return the appropriate endpoint URI for the service calls. If +user+ is
    # provided, the endpoint is determined using the Endpoint Resolver Service,
    # otherwise it is contructed from the +system_number+ configuration value.
    def endpoint_uri( user = nil, service = :automated_batch )
      raise "System Number not known" if user.nil? && system_number.nil?

      # Translate the service
      service = case service
      when :automated_batch
        [ Postini::API::EndpointResolver::Service::V2AutomatedBatch, "automatedbatch" ]
      end

      if user.nil?
        "https://api-s#{system_number}.postini.com/api2/#{service[1]}"
      else
        remote = Postini::API::EndpointResolver::EndpointResolverPort.new
        remote.wiredump_dev = soap4r_wiredump_dev if soap4r_wiredump?
        
        request = Postini::API::EndpointResolver::GetServiceEndpoint.new(
          api_key, user, service[0]
        )
        response = remote.getServiceEndpoint( request )
        response.endpointURI
      end
    end

    def auth( service = :automated_batch, username = nil, password = nil, xauth = nil )
      username ||= self.username
      password ||= self.password
      if password.nil?
        xauth ||= self.xauth
      end

      case service
      when :automated_batch
        API::AutomatedBatch::AuthElem.new(
          api_key, username, password, xauth
        )
      end
    end
    
    def debug?
      @@debug ||= false
    end
    
    def soap4r_wiredump?
      @@soap4r_wiredump ||= false
    end
    
    def logger
      @@logger ||= Logger.new('/dev/null')
    end
    
    def soap4r_wiredump_dev
      @@soap4r_wiredump_dev ||= soap4r_debug_dev
    end
    
  end
  
end