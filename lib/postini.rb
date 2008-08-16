$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

# requirements
gem 'soap4r'
require 'postini/user'
require 'postini/domain'
require 'postini/api/endpointresolver/EndpointResolverDriver'

# This module just provides access to configuration details used by the rest of
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
module Postini
  
  # On the fly class variable, getter and setter generation...
  %w{ api_key system_number username password xauth }.each do |config|
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
  
  # Return the appropriate endpoint URI for the service calls. If +user+ is
  # provided, the endpoint is determined using the Endpoint Resolver Service,
  # otherwise it is contructed from the +system_number+ configuration value.
  def self.endpoint_uri( user = nil, service = :automated_batch )
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
      request = Postini::API::EndpointResolver::GetServiceEndpoint.new(
        Postini.api_key, user, service[0]
      )
      response = remote.getServiceEndpoint( request )
      response.endpointURI
    end
  end
  
  def self.auth( service = :automated_batch, username = nil, password = nil, xauth = nil )
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
end