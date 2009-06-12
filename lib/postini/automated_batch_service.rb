# -*- coding: utf-8 -*-
module Postini
  class AutomatedBatchService < Handsoap::Service

    include ConfigurationCheck

    endpoint Postini::Endpoints.automated_batch

    on_create_document do |doc|
      doc.alias 'aut', 'http://postini.com/PSTN/SOAPAPI/v2/automatedbatch'
    end

    def on_fault( fault )
      exception = RemoteException.delegate( fault.reason )

      # Handle specifics, translate to higher level exception

      # or raise
      raise exception
    end

    # public methods

    # Associates an additional address with a user's primary email
    # address. The alias receives the same filtering and shares the
    # same User Ouarantine as the user’s primary email address.
    #
    # * confirm - If an existing user address is being overwritten to
    #             become an alias address, use confirm
    #
    # Raises a Postini::BatchError if something goes wrong
    def add_alias( user_address, alias_address, confirm = true )
      response = invoke("aut:addalias") do |message|
        build_auth!( message )
        message.add('userAddressOrId', user_address)
        message.add('aliasAddress', alias_address)
        message.add('confirm', 'confirm') if confirm
      end

      true
    end
    requires_configured :add_alias

    # Adds the domain record +name+ to the organization
    # +orgid+. Enclose +orgid+ in double quotes or preceded with a
    # '\' symbol if it contains a quote ('), double quote ("),
    # backslash (\), apostrophe, commas, #, = symbols.
    #
    # Raises a Postini::BatchException if something goes wrong
    def add_domain( orgid, name )
      response = invoke( "aut:adddomain" ) do |message|
        build_auth!( message )
        message.add('orgNameOrId', orgid )
        message.add('args') do |args|
          args.add('domain', name)
        end
      end

      true
    end
    requires_configured :add_domain

    # Adds a user (+address+) to an organization (+org+). Enclose
    # +orgid+ in double quotes or preceded with a
    # '\' symbol if it contains a quote ('), double quote ("),
    # backslash (\), apostrophe, commas, #, = symbols.
    #
    # Raises a Postini::BatchException if something foes wrong
    def add_user( orgid, address, welcome = false )
      response = invoke("aut:adduser") do |message|
        build_auth!( message )
        message.add('userAddress', address)
        message.add('args') do |args|
          args.add('org', orgid)
          args.add('welcome', welcome)
        end
      end

      true
    end
    requires_configured :add_user

    # This operation is an Service Management API’s AutomatedBatch
    # utility. It checks the user’s email, API license key, and
    # password authentication tokens used for connection and
    # authorization validation between the web service and the client.
    #
    # * email  - The email address entered by the user.
    # * apiKey - A unique customer and product ID.
    # * password -- The PMP password entered by the user.
    #
    # If the organization is configured for POP authorization, always
    # use the administrator's email login and password which will be
    # in the PMP format. An end user's POP password will fail.
    def check_auth( email = nil, password = nil, api_key = nil )
      response = invoke("aut:checkauth") do |message|
        build_auth!( message, email, password, api_key )
      end

      return true
    end
    requires_configured :check_auth

    # Removes the specified alias completely from the email security
    # service.
    def delete_alias( alias_address )
      response = invoke("aut:deletealias") do |message|
        build_auth!( message )
        message.add('aliasAddress', alias_address)
      end

      return true
    end
    requires_configured :delete_alias

    # Removes the domain from the organizational hierarchy. All the
    # users for the domain needs to be removed first by #delete_user.
    #
    # Raises a Postini::BatchException if something goes wrong
    def delete_domain( name )
      response = invoke("aut:deletedomain") do |message|
        build_auth!( message )
        message.add('domainNameOrId', name)
      end

      true
    end
    requires_configured :delete_domain

    # Delete a user record from the email security service.
    #
    # Raises a Postini::BatchExceptio if something goes wrong
    def delete_user( address )
      response = invoke("aut:deleteuser") do |message|
        build_auth!( message )
        message.add('userAddressOrId', address)
      end

      true
    end

    # Determines if connections to the web service and the web service
    # client are not blocked. It is a simple round trip test.
    #
    # * true - The connection is successful. If it fails, the
    #          development tool will throw either an error, or warning
    #          depending upon the type of failure.
    # * false - To test the exception handling between the web service
    #           and the application, use test<false> which will
    #           complete the roundtrip between the servers and return
    #           a StatusException.
    #
    # The Endpoint Resolver web service is not used with the test command.
    def test( pass = true )
      response = invoke("aut:test") do |message|
        message.add('should_work', pass)
      end

      parse_test_results( response.document.xpath('//tns:testResponse', tns).first )
    end
    requires_configured :test

    private

    def tns
      { 'tns' => 'http://postini.com/PSTN/SOAPAPI/v2/automatedbatch' }
    end

    def build_auth!( message, email = nil, password = nil, api_key = nil )
      message.add('authElem') do |auth|
        auth.add('apiKey', api_key  || Postini.api_key)
        auth.add('email',  email    || Postini.username )
        auth.add('pword',  password || Postini.password )
      end
    end

    # helpers

    def parse_test_results( node )
      node.xpath('./confirmation_message/text()').to_s
    end
  end
end
