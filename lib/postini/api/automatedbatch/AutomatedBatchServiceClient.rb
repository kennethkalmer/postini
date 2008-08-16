#!/usr/bin/env ruby
require 'AutomatedBatchDriver.rb'


module Postini::API::AutomatedBatch

endpoint_url = ARGV.shift
obj = AutomatedBatchPort.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   test(parameters)
#
# ARGS
#   parameters      Test - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}test
#
# RETURNS
#   parameters      TestResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}testResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           StatusException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}StatusException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.test(parameters)

# SYNOPSIS
#   checkauth(parameters)
#
# ARGS
#   parameters      Checkauth - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}checkauth
#
# RETURNS
#   parameters      CheckauthResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}checkauthResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.checkauth(parameters)

# SYNOPSIS
#   addalias(parameters)
#
# ARGS
#   parameters      Addalias - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}addalias
#
# RETURNS
#   parameters      AddaliasResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}addaliasResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.addalias(parameters)

# SYNOPSIS
#   adddomain(parameters)
#
# ARGS
#   parameters      Adddomain - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adddomain
#
# RETURNS
#   parameters      AdddomainResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adddomainResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.adddomain(parameters)

# SYNOPSIS
#   addorg(parameters)
#
# ARGS
#   parameters      Addorg - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}addorg
#
# RETURNS
#   parameters      AddorgResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}addorgResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.addorg(parameters)

# SYNOPSIS
#   adduser(parameters)
#
# ARGS
#   parameters      Adduser - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adduser
#
# RETURNS
#   parameters      AdduserResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adduserResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.adduser(parameters)

# SYNOPSIS
#   deletealias(parameters)
#
# ARGS
#   parameters      Deletealias - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deletealias
#
# RETURNS
#   parameters      DeletealiasResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deletealiasResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.deletealias(parameters)

# SYNOPSIS
#   deletedomain(parameters)
#
# ARGS
#   parameters      Deletedomain - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deletedomain
#
# RETURNS
#   parameters      DeletedomainResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deletedomainResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.deletedomain(parameters)

# SYNOPSIS
#   deleteorg(parameters)
#
# ARGS
#   parameters      Deleteorg - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deleteorg
#
# RETURNS
#   parameters      DeleteorgResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deleteorgResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.deleteorg(parameters)

# SYNOPSIS
#   deleteuser(parameters)
#
# ARGS
#   parameters      Deleteuser - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deleteuser
#
# RETURNS
#   parameters      DeleteuserResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deleteuserResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.deleteuser(parameters)

# SYNOPSIS
#   displaydomain(parameters)
#
# ARGS
#   parameters      Displaydomain - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displaydomain
#
# RETURNS
#   parameters      DisplaydomainResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displaydomainResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.displaydomain(parameters)

# SYNOPSIS
#   displayorg(parameters)
#
# ARGS
#   parameters      Displayorg - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayorg
#
# RETURNS
#   parameters      DisplayorgResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayorgResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.displayorg(parameters)

# SYNOPSIS
#   displayspool(parameters)
#
# ARGS
#   parameters      Displayspool - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayspool
#
# RETURNS
#   parameters      DisplayspoolResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayspoolResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.displayspool(parameters)

# SYNOPSIS
#   displayuser(parameters)
#
# ARGS
#   parameters      Displayuser - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayuser
#
# RETURNS
#   parameters      DisplayuserResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayuserResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.displayuser(parameters)

# SYNOPSIS
#   getorgreport(parameters)
#
# ARGS
#   parameters      Getorgreport - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}getorgreport
#
# RETURNS
#   parameters      GetorgreportResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}getorgreportResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.getorgreport(parameters)

# SYNOPSIS
#   listdomains(parameters)
#
# ARGS
#   parameters      Listdomains - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listdomains
#
# RETURNS
#   parameters      ListdomainsResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listdomainsResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.listdomains(parameters)

# SYNOPSIS
#   listorgs(parameters)
#
# ARGS
#   parameters      Listorgs - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listorgs
#
# RETURNS
#   parameters      ListorgsResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listorgsResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.listorgs(parameters)

# SYNOPSIS
#   listusers(parameters)
#
# ARGS
#   parameters      Listusers - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listusers
#
# RETURNS
#   parameters      ListusersResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listusersResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.listusers(parameters)

# SYNOPSIS
#   modifydomain(parameters)
#
# ARGS
#   parameters      Modifydomain - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifydomain
#
# RETURNS
#   parameters      ModifydomainResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifydomainResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.modifydomain(parameters)

# SYNOPSIS
#   modifyorg(parameters)
#
# ARGS
#   parameters      Modifyorg - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifyorg
#
# RETURNS
#   parameters      ModifyorgResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifyorgResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.modifyorg(parameters)

# SYNOPSIS
#   modifyuser(parameters)
#
# ARGS
#   parameters      Modifyuser - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifyuser
#
# RETURNS
#   parameters      ModifyuserResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifyuserResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.modifyuser(parameters)

# SYNOPSIS
#   suspenduser(parameters)
#
# ARGS
#   parameters      Suspenduser - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}suspenduser
#
# RETURNS
#   parameters      SuspenduserResponse - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}suspenduserResponse
#
# RAISES
#   fault           AdminBlockException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   fault           AuthenticationException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   fault           BatchException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   fault           InternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   fault           InvalidValueException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   fault           MalformedKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   fault           MissingElementException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   fault           NoSuchKeyException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   fault           UnknownInternalException - {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#
parameters = nil
puts obj.suspenduser(parameters)




end
