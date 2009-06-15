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
    requires_configured :delete_user

    # Retrieve the details of the domain from the email security
    # service as a hash with the following keys:
    #
    # :org        => string - Name of the parent org
    # :substrip   => true/false - Whether sub domain stripping in enabled
    # :aliased_to => nil/string - Alias of another domain
    # :aliased_as => array - List of domain aliases
    # :id         => integer - Domain id
    # :name       => string - Domain name
    def display_domain( name )
      response = invoke("aut:displaydomain") do |message|
        build_auth!( message )
        message.add('domainNameOrId', name )
      end

      parse_display_domain_results( response.document.xpath('//tns:displaydomainResponse', tns).first )
    end
    requires_configured :display_domain

    # Retrieve the details of the user from the email securty service
    # as a hash with following keys:
    #
    # :active => bool
    # :address => string
    # :approved_recipients => array
    # :approved_senders => array
    # :blocked_senders => array
    # :create_method => integer
    # :created_date => Time
    # :filter_adult => string
    # :filter_bulk => string
    # :filter_getrich => string
    # :filter_offers => string
    # :filter_racial => string
    # :initial_password => string
    # :junkmail_filter => bool
    # :lang_locale => string
    # :lastmod_date => Time
    # :message_encryption => string
    # :message_limit => string
    # :message_limited => bool
    # :message_count => integer
    # :notice_address => string
    # :org => string
    # :password => string
    # :timezone => string
    # :id => integer
    # :virus_notify => string
    # :virus_state => bool
    # :weblocked => bool
    # :welcome_count => integer
    # :wireless_state => string
    def display_user( address )
      response = invoke("aut:displayuser") do |message|
        build_auth!( message )
        message.add('userAddressOrId', address)
      end

      parse_display_user_results( response.document.xpath('//tns:displayuserResponse', tns).first )
    end
    requires_configured :display_user

    # Return a list of users, possibly filtered and sorted. Refer to
    # the Postini Automated Batch Service Manual for an explanation of
    # each field.
    #
    # Possible options are:
    #
    # :aliases => boolean
    # :childorgs => boolean
    # :start => integer
    # :end => integer
    # :fields => array (strings)
    # :orgtagqs => string
    # :primaryqs => string
    # :targetOrg => string
    # :type_of_user => string
    #
    # The call returns a giant hash, keys are the addresses returned
    # by the operation, and the values are hashes of key-value pairs
    # are returned by the remote service.
    def list_users( query_string = 'ALL', options = {} )

      valid_options = {}

      # vanilla copies
      [ :start, :end, :orgtagqs, :primaryqs, :targetOrg, :type_of_user ].each do |k|

        valid_options[k] = options[k] if options.has_key?(k)
      end

      # boolean copies
      [ :aliases, :childorgs ].each do |k|

        if options.has_key?(k)
          valid_options[k] = ( options[k] == true ? '1' : '0' )
        end
      end

      valid_options[:fields] = options[:fields].join('|') if options.has_key?(:fields)

      response = invoke("aut:listusers") do |message|
        build_auth!( message )
        message.add('queryString', query_string)
        message.add('queryParams') do |q|
          valid_options.each do |k,v|
            q.add( k.to_s, v )
          end
        end
      end

      parse_list_users_results( response.document.xpath('//tns:listusersResponse', tns).first )
    end
    requires_configured :list_users

    # Modify a domain by moving it to a new organization, setting or
    # removing aliases, or enabling/disabling subdomain
    # stripping. Changes are passed as a hash with the following keys:
    #
    # :org => string - New organization to move domain to
    # :substrip => bool - New new value for substrip
    # :aliases => array - Add new domain aliases to the array, to
    #             remove an existing domain alias prepend the name
    #             with a hyphen (-)
    def modify_domain( name, changes = {} )
      valid_changes = {}
      valid_changes['neworg'] = changes[:org] if changes.has_key?(:org)
      if changes.has_key?(:substrip)
        valid_changes['substrip'] = ( changes[:substrip] == true ? 'yes' : 'no' )
      end
      valid_changes['alias'] = changes[:aliases].to_a.join(', ') if changes.has_key?(:aliases)

      response = invoke("aut:modifydomain") do |message|
        build_auth!( message )
        message.add('domainNameOrId', name)
        message.add('domainModifications') do |mods|
          valid_changes.each do |k,v|
            mods.add( k, v )
          end
        end
      end

      display_domain( name )
    end
    requires_configured :modify_domain

    # Modify a user extensively by providing any of the following keys
    # in the changes hash
    #
    # :active => bool
    # :address => string (change the email address)
    # :approved_recipients => array (full or changes)
    # :approved_senders => array (full or changes)
    # :blocked_senders => array (full or changes)
    # :filter_adult => string
    # :filter_bulk => string
    # :filter_getrich => string
    # :filter_offers => string
    # :filter_racial => string
    # :initial_password => string
    # :junkemail_filter => bool
    # :lang_locale => string
    # :message_limit => integer
    # :message_limited => bool
    # :notice_address => string
    # :org => string
    # :password => string
    # :virus_notify => bool
    # :virus_state => bool
    # :weblocked => bool
    # :wireless_state => string
    #
    # Notes on array parameters: Provide the full set of values, or an
    # array of diffs (new entries prepended with a plus (+) and
    # entries to be removed prepended with a hyphen (-).
    #
    # Notes on *all* parameters: I don't use all of these, nor will I
    # ever, so please test them well and report any bugs to me.
    def modify_user( address, changes = {} )
      valid_changes = {}
      valid_changes[:orgid] = changes[:org] if changes.has_key?(:org)

      # Vanilla string copies
      [ :active, :address, :filter_adult, :filter_bulk, :filter_getrich,
        :filter_offers, :filter_racial, :initial_password, :lang_locale,
        :notice_address, :password, :wireless_state, :message_limit
      ].each do |k|

        valid_changes[k] = changes[k] if changes.has_key?(k)
      end

      # Booleans need some special handling
      [ :active, :junkemail_filter, :message_limited, :virus_notify,
        :virus_state, :weblocked
      ].each do |k|

        if changes.has_key?(k)
          valid_changes[k] = ( changes[k] == true ? 'yes' : 'no' )
        end
      end

      # Join the arrays
      [ :approved_senders, :approved_recipients, :blocked_senders ].each do |k|

        if changes.has_key?( k )
          valid_changes[k] = changes[k].join(', ')
        end
      end

      # pray
      response = invoke("aut:modifyuser") do |message|
        build_auth!( message )
        message.add('userAddressOrId', address)
        message.add('userModifications') do |mods|
          valid_changes.each do |k,v|
            mods.add( k.to_s, v )
          end
        end
      end

      address = valid_changes[:address] || address

      display_user( address )
    end
    requires_configured :modify_user

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

    def to_array( string )
      array = string.split(/[,\s+]/)
      array.delete_if { |e| e == 'empty' }
      array
    end

    # helpers

    def parse_test_results( node )
      node.xpath('./confirmation_message/text()').to_s
    end

    def parse_display_domain_results( node )
      # <tns:displaydomainResponse>
      #   <domainRecord>
      #     <aliasedto>postini4r1.co.za</aliasedto>
      #     <aliasedfrom>postini4rone.co.za</aliasedfrom>
      #     <domainid>10000</domainid>
      #     <domainname>postini4r1.co.za</domainname>
      #     <org>postini-0.stage.example.org</org>
      #     <substrip>0</substrip>
      #   </domainRecord>
      # </tns:displaydomainResponse>

      data = {
        :id => node.xpath('./domainRecord/domainid/text()').to_s.to_i,
        :name => node.xpath('./domainRecord/domainname/text()').to_s,
        :org => node.xpath('./domainRecord/org/text()').to_s,
        :substrip => node.xpath('./domainRecord/substrip/text()').to_s == '1'
      }

      unless node.xpath('./domainRecord/aliasedto/text()').empty?
        data[:aliased_to] = node.xpath('./domainRecord/aliasedto/text()').to_s
      end

      unless node.xpath('./domainRecord/aliasedfrom/text()').empty?
        data[:aliased_from] = to_array( node.xpath('./domainRecord/aliasedfrom/text()').to_s )
      end

      data
    end

    def parse_display_user_results( node )
      # <tns:displayuserResponse>
      #    <userRecord>
      #       <active>yes</active>
      #       <address>info@example.com</address>
      #       <approved_recipients>empty</approved_recipients>
      #       <approved_senders>empty</approved_senders>
      #       <blocked_senders>empty</blocked_senders>
      #       <create_method>3</create_method>
      #       <created_date>123456789</created_date>
      #       <filter_adult>moderately aggressive</filter_adult>
      #       <filter_bulk>leniently aggressive</filter_bulk>
      #       <filter_getrich>moderately aggressive</filter_getrich>
      #       <filter_offers>moderately aggressive</filter_offers>
      #       <filter_racial>moderately aggressive</filter_racial>
      #       <initial_password/>
      #       <junkmail_filter>on</junkmail_filter>
      #       <lang_locale/>
      #       <lastmod_date>123456789</lastmod_date>
      #       <message_count>0</message_count>
      #       <message_limit/>
      #       <message_limited>no</message_limited>
      #       <notice_address/>
      #       <orgid>Example Org Users</orgid>
      #       <password>randomhashrepresentation</password>
      #       <timezone>Europe/Lisbon</timezone>
      #       <user_id>1</user_id>
      #       <virus_notify>Organization default</virus_notify>
      #       <virus_state>on</virus_state>
      #       <weblocked>no</weblocked>
      #       <welcome_count>1</welcome_count>
      #       <wireless_state>unavailable</wireless_state>
      #    </userRecord>
      # </tns:displayuserResponse>

      data = {
        :active => node.xpath('./userRecord/active/text()').to_s == 'yes',
        :address => node.xpath('./userRecord/address/text()').to_s,
        :approved_recipients => to_array( node.xpath('./userRecord/approved_recipients/text()').to_s ),
        :approved_senders => to_array( node.xpath('./userRecord/approved_senders/text()').to_s ),
        :blocked_senders => to_array( node.xpath('./userRecord/blocked_senders/text()').to_s ),
        :create_method => node.xpath('./userRecord/create_method/text()').to_s.to_i,
        :created_date => Time.at( node.xpath('./userRecord/created_date/text()').to_s.to_i ),
        :filter_adult => node.xpath('./userRecord/filter_adult/text()').to_s,
        :filter_bulk => node.xpath('./userRecord/filter_bulk/text()').to_s,
        :filter_getrich => node.xpath('./userRecord/filter_getrich/text()').to_s,
        :filter_offers => node.xpath('./userRecord/filter_offers/text()').to_s,
        :filter_racial => node.xpath('./userRecord/filter_racial/text()').to_s,
        :initial_password => node.xpath('./userRecord/initial_password/text()').to_s,
        :junkmail_filter => node.xpath('./userRecord/junkmail_filter/text()').to_s == 'on',
        :lang_locale => node.xpath('./userRecord/lang_local/text()').to_s,
        :lastmod_date => Time.at( node.xpath('./userRecord/lastmod_date/text()').to_s.to_i ),
        :message_encryption => node.xpath('./userRecord/message_encryption/text()').to_s,
        :message_limit => node.xpath('./userRecord/message_limit/text()').to_s,
        :message_limited => node.xpath('./userRecord/message_limited/text()').to_s == 'yes',
        :message_count => node.xpath('./userRecord/message_count/text()').to_s.to_i,
        :notice_address => node.xpath('./userRecord/notice_address/text()').to_s,
        :org => node.xpath('./userRecord/orgid/text()').to_s,
        :password => node.xpath('./userRecord/password/text()').to_s,
        :timezone => node.xpath('./userRecord/timezone/text()').to_s,
        :id => node.xpath('./userRecord/user_id/text()').to_s,
        :virus_notify => node.xpath('./userRecord/virus_notify/text()').to_s,
        :virus_state => node.xpath('./userRecord/virus_state/text()').to_s,
        :weblocked => node.xpath('./userRecord/weblocked/text()').to_s == 'yes',
        :welcome_count => node.xpath('./userRecord/welcome_count/text()').to_s.to_i,
        :wireless_state => node.xpath('./userRecord/wireless_state/text()').to_s
      }

      data
    end

    def parse_list_users_results( node )
      # <tns:listusersResponse>
      #   <user>
      #      <active>0</active>
      #      <address>sales@jumboinc.com</address>
      #      <create_method>3</create_method>
      #      <orgtag>Sales</orgtag>
      #      <timezone>Europe/Lisbon</timezone>
      #   </user>
      #   <user>
      #     ...
      #   </user
      # </tns:listusersResponse>

      data = {}

      node.xpath('./user').each do |user|

        address = user.xpath('./address/text()').to_s
        fields = {}

        user.children.each do |field|
          next if field.name == 'address'

          fields[ field.name.to_sym ] = field.content
        end

        data[ address ] = fields
      end

      data
    end
  end
end
