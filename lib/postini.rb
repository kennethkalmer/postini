$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

# requirements
require 'rubygems'
require 'handsoap'

gem 'soap4r', '=1.5.8'
unless defined?( ActiveSupport )
  gem 'activesupport', '>=2.0.2'
end
require 'postini/helpers'
require 'postini/user'
require 'postini/domain'
require 'postini/exceptions'

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
# 2. You omit the optional username and password string for the request
#
#   Postini.username = 'administrat@jumboinc.com'
#
# The +password+ parameter is require if:
# 1. Your org is using POP authentication, and thus needs the admin
# user's authentication details, not the end-users's.
# 2. You can omit the optional username and password arguments for a
# specific request.
#
#   Postini.password = 'secret'
#
# = Debugging
#
# Lots to debug when an API is classified as "Early access", here are different
# controls for setting the debugging verbosity
#
# * logger = Ruby-logger compatibe logger
# * debug = true/false - Enable more verbose logging
#
# Specify a 'Logger' compatible logging facility in order to use the debug
# features of the gem. All the other settings increase the verbosity to varying
# degrees, and allow you to access some soap4r internals as well.
#
module Postini
  VERSION = "0.1.0"

  autoload :ConfigurationCheck,      "postini/configuration_check"
  autoload :Endpoints,               "postini/endpoints"
  autoload :EndpointResolverService, "postini/endpoint_resolver_service"

  # Don't debug by default
  @debug = false

  class << self

    attr_accessor :api_key, :system_number, :username, :password, :debug, :logger

    def configured? #:nodoc:
      !self.api_key.nil? &&
        !self.system_number.nil? &&
        !self.username.nil? &&
        !self.password.nil?
    end
  end

  class << self

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

  end

end
