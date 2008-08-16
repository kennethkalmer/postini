$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

# requirements
gem 'soap4r'

# mixins
require 'postini/endpoint'

# classes
require 'postini/user'

# This module just provides access to configuration details used by the rest of
# the gem.
# 
# Current configuration values are:
# * api_key
# * system_number
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
module Postini
  
  # Postini API Key
  @@api_key = nil
  
  # Postini 'starter' system
  @@system_number = nil
  
  def self.api_key=( val ) #:nodoc:
    @@api_key = val
  end
  
  def self.api_key #:nodoc:
    @@api_key
  end
  
  def self.system_number=( val ) #:nodoc:
    @@system_number = val
  end
  
  def self.system_number #:nodoc:
    @@system_number
  end
  
end