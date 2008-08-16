require 'xsd/qname'

module Postini; module API; module AutomatedBatch


# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AdminBlockException
#   message - SOAP::SOAPString
class AdminBlockException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}AuthenticationException
#   message - SOAP::SOAPString
class AuthenticationException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}BatchException
#   message - SOAP::SOAPString
class BatchException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InternalException
#   message - SOAP::SOAPString
class InternalException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}InvalidValueException
#   message - SOAP::SOAPString
class InvalidValueException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MalformedKeyException
#   message - SOAP::SOAPString
class MalformedKeyException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}MissingElementException
#   message - SOAP::SOAPString
class MissingElementException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}NoSuchKeyException
#   message - SOAP::SOAPString
class NoSuchKeyException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}StatusException
#   message - SOAP::SOAPString
class StatusException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}UnknownInternalException
#   message - SOAP::SOAPString
class UnknownInternalException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}addalias
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   userAddressOrId - SOAP::SOAPString
#   aliasAddress - SOAP::SOAPString
#   confirm - SOAP::SOAPString
class Addalias
  attr_accessor :authElem
  attr_accessor :userAddressOrId
  attr_accessor :aliasAddress
  attr_accessor :confirm

  def initialize(authElem = nil, userAddressOrId = nil, aliasAddress = nil, confirm = nil)
    @authElem = authElem
    @userAddressOrId = userAddressOrId
    @aliasAddress = aliasAddress
    @confirm = confirm
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}addaliasResponse
class AddaliasResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adddomain
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   orgNameOrId - SOAP::SOAPString
#   args - Postini::API::AutomatedBatch::Adddomainargs
class Adddomain
  attr_accessor :authElem
  attr_accessor :orgNameOrId
  attr_accessor :args

  def initialize(authElem = nil, orgNameOrId = nil, args = nil)
    @authElem = authElem
    @orgNameOrId = orgNameOrId
    @args = args
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adddomainResponse
class AdddomainResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adddomainargs
#   domain - SOAP::SOAPString
class Adddomainargs
  attr_accessor :domain

  def initialize(domain = nil)
    @domain = domain
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}addorg
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   orgName - SOAP::SOAPString
#   args - Postini::API::AutomatedBatch::Addorgargs
class Addorg
  attr_accessor :authElem
  attr_accessor :orgName
  attr_accessor :args

  def initialize(authElem = nil, orgName = nil, args = nil)
    @authElem = authElem
    @orgName = orgName
    @args = args
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}addorgResponse
class AddorgResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}addorgargs
#   parent - SOAP::SOAPString
class Addorgargs
  attr_accessor :parent

  def initialize(parent = nil)
    @parent = parent
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adduser
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   userAddress - SOAP::SOAPString
#   args - Postini::API::AutomatedBatch::Adduserargs
class Adduser
  attr_accessor :authElem
  attr_accessor :userAddress
  attr_accessor :args

  def initialize(authElem = nil, userAddress = nil, args = nil)
    @authElem = authElem
    @userAddress = userAddress
    @args = args
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adduserResponse
class AdduserResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}adduserargs
#   org - SOAP::SOAPString
#   welcome - SOAP::SOAPString
class Adduserargs
  attr_accessor :org
  attr_accessor :welcome

  def initialize(org = nil, welcome = nil)
    @org = org
    @welcome = welcome
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}authElem
#   apiKey - SOAP::SOAPString
#   email - SOAP::SOAPString
#   pword - SOAP::SOAPString
#   xauth - SOAP::SOAPString
class AuthElem
  attr_accessor :apiKey
  attr_accessor :email
  attr_accessor :pword
  attr_accessor :xauth

  def initialize(apiKey = nil, email = nil, pword = nil, xauth = nil)
    @apiKey = apiKey
    @email = email
    @pword = pword
    @xauth = xauth
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}checkauth
#   authElem - Postini::API::AutomatedBatch::AuthElem
class Checkauth
  attr_accessor :authElem

  def initialize(authElem = nil)
    @authElem = authElem
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}checkauthResponse
class CheckauthResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deletealias
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   aliasAddress - SOAP::SOAPString
class Deletealias
  attr_accessor :authElem
  attr_accessor :aliasAddress

  def initialize(authElem = nil, aliasAddress = nil)
    @authElem = authElem
    @aliasAddress = aliasAddress
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deletealiasResponse
class DeletealiasResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deletedomain
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   domainNameOrId - SOAP::SOAPString
class Deletedomain
  attr_accessor :authElem
  attr_accessor :domainNameOrId

  def initialize(authElem = nil, domainNameOrId = nil)
    @authElem = authElem
    @domainNameOrId = domainNameOrId
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deletedomainResponse
class DeletedomainResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deleteorg
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   orgNameOrId - SOAP::SOAPString
class Deleteorg
  attr_accessor :authElem
  attr_accessor :orgNameOrId

  def initialize(authElem = nil, orgNameOrId = nil)
    @authElem = authElem
    @orgNameOrId = orgNameOrId
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deleteorgResponse
class DeleteorgResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deleteuser
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   userAddressOrId - SOAP::SOAPString
class Deleteuser
  attr_accessor :authElem
  attr_accessor :userAddressOrId

  def initialize(authElem = nil, userAddressOrId = nil)
    @authElem = authElem
    @userAddressOrId = userAddressOrId
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}deleteuserResponse
class DeleteuserResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displaydomain
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   domainNameOrId - SOAP::SOAPString
class Displaydomain
  attr_accessor :authElem
  attr_accessor :domainNameOrId

  def initialize(authElem = nil, domainNameOrId = nil)
    @authElem = authElem
    @domainNameOrId = domainNameOrId
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displaydomainResponse
#   domainRecord - Postini::API::AutomatedBatch::DomainRecord
class DisplaydomainResponse
  attr_accessor :domainRecord

  def initialize(domainRecord = nil)
    @domainRecord = domainRecord
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayorg
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   orgNameOrId - SOAP::SOAPString
class Displayorg
  attr_accessor :authElem
  attr_accessor :orgNameOrId

  def initialize(authElem = nil, orgNameOrId = nil)
    @authElem = authElem
    @orgNameOrId = orgNameOrId
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayorgResponse
#   orgRecord - Postini::API::AutomatedBatch::OrgRecord
class DisplayorgResponse
  attr_accessor :orgRecord

  def initialize(orgRecord = nil)
    @orgRecord = orgRecord
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayspool
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   emailOrgNameOrId - SOAP::SOAPString
class Displayspool
  attr_accessor :authElem
  attr_accessor :emailOrgNameOrId

  def initialize(authElem = nil, emailOrgNameOrId = nil)
    @authElem = authElem
    @emailOrgNameOrId = emailOrgNameOrId
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayspoolResponse
#   spoolRecord - Postini::API::AutomatedBatch::SpoolRecord
class DisplayspoolResponse
  attr_accessor :spoolRecord

  def initialize(spoolRecord = nil)
    @spoolRecord = spoolRecord
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayuser
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   userAddressOrId - SOAP::SOAPString
class Displayuser
  attr_accessor :authElem
  attr_accessor :userAddressOrId

  def initialize(authElem = nil, userAddressOrId = nil)
    @authElem = authElem
    @userAddressOrId = userAddressOrId
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}displayuserResponse
#   userRecord - Postini::API::AutomatedBatch::UserRecord
class DisplayuserResponse
  attr_accessor :userRecord

  def initialize(userRecord = nil)
    @userRecord = userRecord
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}domainRecord
#   m_alias - SOAP::SOAPString
#   aliasedfrom - SOAP::SOAPString
#   aliasedto - SOAP::SOAPString
#   domainid - SOAP::SOAPString
#   domainname - SOAP::SOAPString
#   neworg - SOAP::SOAPString
#   org - SOAP::SOAPString
#   substrip - SOAP::SOAPString
class DomainRecord
  attr_accessor :aliasedfrom
  attr_accessor :aliasedto
  attr_accessor :domainid
  attr_accessor :domainname
  attr_accessor :neworg
  attr_accessor :org
  attr_accessor :substrip

  def m_alias
    @v_alias
  end

  def m_alias=(value)
    @v_alias = value
  end

  def initialize(v_alias = nil, aliasedfrom = nil, aliasedto = nil, domainid = nil, domainname = nil, neworg = nil, org = nil, substrip = nil)
    @v_alias = v_alias
    @aliasedfrom = aliasedfrom
    @aliasedto = aliasedto
    @domainid = domainid
    @domainname = domainname
    @neworg = neworg
    @org = org
    @substrip = substrip
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}getorgreport
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   orgNameOrId - SOAP::SOAPString
#   args - Postini::API::AutomatedBatch::Getorgreportargs
class Getorgreport
  attr_accessor :authElem
  attr_accessor :orgNameOrId
  attr_accessor :args

  def initialize(authElem = nil, orgNameOrId = nil, args = nil)
    @authElem = authElem
    @orgNameOrId = orgNameOrId
    @args = args
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}getorgreportResponse
class GetorgreportResponse < ::Array
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}getorgreportargs
#   date - SOAP::SOAPString
#   report - SOAP::SOAPString
#   top - SOAP::SOAPString
class Getorgreportargs
  attr_accessor :date
  attr_accessor :report
  attr_accessor :top

  def initialize(date = nil, report = nil, top = nil)
    @date = date
    @report = report
    @top = top
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listdomains
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   queryString - SOAP::SOAPString
#   queryParams - Postini::API::AutomatedBatch::ListdomainsqueryParams
class Listdomains
  attr_accessor :authElem
  attr_accessor :queryString
  attr_accessor :queryParams

  def initialize(authElem = nil, queryString = nil, queryParams = nil)
    @authElem = authElem
    @queryString = queryString
    @queryParams = queryParams
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listdomainsResponse
class ListdomainsResponse < ::Array
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listdomainsqueryParams
#   aliases - SOAP::SOAPString
#   childorgs - SOAP::SOAPString
#   m_end - SOAP::SOAPString
#   fields - SOAP::SOAPString
#   orgtagqs - SOAP::SOAPString
#   primaryqs - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   start - SOAP::SOAPString
#   targetOrg - SOAP::SOAPString
class ListdomainsqueryParams
  attr_accessor :aliases
  attr_accessor :childorgs
  attr_accessor :fields
  attr_accessor :orgtagqs
  attr_accessor :primaryqs
  attr_accessor :sort
  attr_accessor :start
  attr_accessor :targetOrg

  def m_end
    @v_end
  end

  def m_end=(value)
    @v_end = value
  end

  def initialize(aliases = nil, childorgs = nil, v_end = nil, fields = nil, orgtagqs = nil, primaryqs = nil, sort = nil, start = nil, targetOrg = nil)
    @aliases = aliases
    @childorgs = childorgs
    @v_end = v_end
    @fields = fields
    @orgtagqs = orgtagqs
    @primaryqs = primaryqs
    @sort = sort
    @start = start
    @targetOrg = targetOrg
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listorgs
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   queryString - SOAP::SOAPString
#   queryParams - Postini::API::AutomatedBatch::ListorgsqueryParams
class Listorgs
  attr_accessor :authElem
  attr_accessor :queryString
  attr_accessor :queryParams

  def initialize(authElem = nil, queryString = nil, queryParams = nil)
    @authElem = authElem
    @queryString = queryString
    @queryParams = queryParams
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listorgsResponse
class ListorgsResponse < ::Array
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listorgsqueryParams
#   childorgs - SOAP::SOAPString
#   m_end - SOAP::SOAPString
#   fields - SOAP::SOAPString
#   orgtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   start - SOAP::SOAPString
#   targetOrg - SOAP::SOAPString
class ListorgsqueryParams
  attr_accessor :childorgs
  attr_accessor :fields
  attr_accessor :orgtag
  attr_accessor :sort
  attr_accessor :start
  attr_accessor :targetOrg

  def m_end
    @v_end
  end

  def m_end=(value)
    @v_end = value
  end

  def initialize(childorgs = nil, v_end = nil, fields = nil, orgtag = nil, sort = nil, start = nil, targetOrg = nil)
    @childorgs = childorgs
    @v_end = v_end
    @fields = fields
    @orgtag = orgtag
    @sort = sort
    @start = start
    @targetOrg = targetOrg
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listusers
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   queryString - SOAP::SOAPString
#   queryParams - Postini::API::AutomatedBatch::ListusersqueryParams
class Listusers
  attr_accessor :authElem
  attr_accessor :queryString
  attr_accessor :queryParams

  def initialize(authElem = nil, queryString = nil, queryParams = nil)
    @authElem = authElem
    @queryString = queryString
    @queryParams = queryParams
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listusersResponse
class ListusersResponse < ::Array
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}listusersqueryParams
#   aliases - SOAP::SOAPString
#   childorgs - SOAP::SOAPString
#   m_end - SOAP::SOAPString
#   fields - SOAP::SOAPString
#   orgtagqs - SOAP::SOAPString
#   primaryqs - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   start - SOAP::SOAPString
#   targetOrg - SOAP::SOAPString
#   type_of_user - SOAP::SOAPString
class ListusersqueryParams
  attr_accessor :aliases
  attr_accessor :childorgs
  attr_accessor :fields
  attr_accessor :orgtagqs
  attr_accessor :primaryqs
  attr_accessor :sort
  attr_accessor :start
  attr_accessor :targetOrg
  attr_accessor :type_of_user

  def m_end
    @v_end
  end

  def m_end=(value)
    @v_end = value
  end

  def initialize(aliases = nil, childorgs = nil, v_end = nil, fields = nil, orgtagqs = nil, primaryqs = nil, sort = nil, start = nil, targetOrg = nil, type_of_user = nil)
    @aliases = aliases
    @childorgs = childorgs
    @v_end = v_end
    @fields = fields
    @orgtagqs = orgtagqs
    @primaryqs = primaryqs
    @sort = sort
    @start = start
    @targetOrg = targetOrg
    @type_of_user = type_of_user
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifydomain
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   domainNameOrId - SOAP::SOAPString
#   domainModifications - Postini::API::AutomatedBatch::DomainRecord
class Modifydomain
  attr_accessor :authElem
  attr_accessor :domainNameOrId
  attr_accessor :domainModifications

  def initialize(authElem = nil, domainNameOrId = nil, domainModifications = nil)
    @authElem = authElem
    @domainNameOrId = domainNameOrId
    @domainModifications = domainModifications
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifydomainResponse
class ModifydomainResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifyorg
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   orgNameOrId - SOAP::SOAPString
#   orgModifications - Postini::API::AutomatedBatch::OrgRecord
class Modifyorg
  attr_accessor :authElem
  attr_accessor :orgNameOrId
  attr_accessor :orgModifications

  def initialize(authElem = nil, orgNameOrId = nil, orgModifications = nil)
    @authElem = authElem
    @orgNameOrId = orgNameOrId
    @orgModifications = orgModifications
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifyorgResponse
class ModifyorgResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifyuser
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   userAddressOrId - SOAP::SOAPString
#   userModifications - Postini::API::AutomatedBatch::UserRecord
class Modifyuser
  attr_accessor :authElem
  attr_accessor :userAddressOrId
  attr_accessor :userModifications

  def initialize(authElem = nil, userAddressOrId = nil, userModifications = nil)
    @authElem = authElem
    @userAddressOrId = userAddressOrId
    @userModifications = userModifications
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}modifyuserResponse
class ModifyuserResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}orgRecord
#   approved_senders - SOAP::SOAPString
#   archive - SOAP::SOAPString
#   async_bounce - SOAP::SOAPString
#   at_notify_on - SOAP::SOAPString
#   authentication_data - SOAP::SOAPString
#   authentication_type - SOAP::SOAPString
#   autocreate_smtp - SOAP::SOAPString
#   autocreate_web - SOAP::SOAPString
#   blatant_spam - SOAP::SOAPString
#   blocked_senders - SOAP::SOAPString
#   bounce_fragments - SOAP::SOAPString
#   company_name - SOAP::SOAPString
#   create_method - SOAP::SOAPString
#   created_date - SOAP::SOAPString
#   creator - SOAP::SOAPString
#   default_message_limit - SOAP::SOAPString
#   default_user - SOAP::SOAPString
#   disable_first_spam - SOAP::SOAPString
#   disposition_virus - SOAP::SOAPString
#   ext_encrypt - SOAP::SOAPString
#   footer_on - SOAP::SOAPString
#   iid - SOAP::SOAPString
#   im_enable - SOAP::SOAPString
#   im_external_enable - SOAP::SOAPString
#   im_proto_enable - SOAP::SOAPString
#   is_email_config - SOAP::SOAPString
#   lang_locale - SOAP::SOAPString
#   lastmod_date - SOAP::SOAPString
#   max_message_size - SOAP::SOAPString
#   ndr - SOAP::SOAPString
#   non_account_bounce - SOAP::SOAPString
#   non_account_virus_scan - SOAP::SOAPString
#   orgname - SOAP::SOAPString
#   out_at_notify_on - SOAP::SOAPString
#   outbound_max_message_size - SOAP::SOAPString
#   outbound_virus - SOAP::SOAPString
#   outbound_virus_disposition - SOAP::SOAPString
#   parent_org - SOAP::SOAPString
#   qsum_actionable - SOAP::SOAPString
#   qsum_enable - SOAP::SOAPString
#   qtine_redir_atq - SOAP::SOAPString
#   qtine_redir_ndr - SOAP::SOAPString
#   qtine_redir_out_atq - SOAP::SOAPString
#   qtine_redir_out_virus - SOAP::SOAPString
#   qtine_redir_spam - SOAP::SOAPString
#   qtine_redir_virus - SOAP::SOAPString
#   quarantine_links - SOAP::SOAPString
#   quarsum_links - SOAP::SOAPString
#   remotecmd_secret - SOAP::SOAPString
#   spam_notify_on - SOAP::SOAPString
#   support_contact - SOAP::SOAPString
#   tagonly_spam - SOAP::SOAPString
#   timezone - SOAP::SOAPString
#   tls_notify_admin - SOAP::SOAPString
#   tls_notify_on - SOAP::SOAPString
#   virus_clean - SOAP::SOAPString
#   virus_notify - SOAP::SOAPString
#   welcome_on - SOAP::SOAPString
#   zero_hour_notify_on - SOAP::SOAPString
#   zero_hour_scan - SOAP::SOAPString
#   zero_hour_waiver - SOAP::SOAPString
class OrgRecord
  attr_accessor :approved_senders
  attr_accessor :archive
  attr_accessor :async_bounce
  attr_accessor :at_notify_on
  attr_accessor :authentication_data
  attr_accessor :authentication_type
  attr_accessor :autocreate_smtp
  attr_accessor :autocreate_web
  attr_accessor :blatant_spam
  attr_accessor :blocked_senders
  attr_accessor :bounce_fragments
  attr_accessor :company_name
  attr_accessor :create_method
  attr_accessor :created_date
  attr_accessor :creator
  attr_accessor :default_message_limit
  attr_accessor :default_user
  attr_accessor :disable_first_spam
  attr_accessor :disposition_virus
  attr_accessor :ext_encrypt
  attr_accessor :footer_on
  attr_accessor :iid
  attr_accessor :im_enable
  attr_accessor :im_external_enable
  attr_accessor :im_proto_enable
  attr_accessor :is_email_config
  attr_accessor :lang_locale
  attr_accessor :lastmod_date
  attr_accessor :max_message_size
  attr_accessor :ndr
  attr_accessor :non_account_bounce
  attr_accessor :non_account_virus_scan
  attr_accessor :orgname
  attr_accessor :out_at_notify_on
  attr_accessor :outbound_max_message_size
  attr_accessor :outbound_virus
  attr_accessor :outbound_virus_disposition
  attr_accessor :parent_org
  attr_accessor :qsum_actionable
  attr_accessor :qsum_enable
  attr_accessor :qtine_redir_atq
  attr_accessor :qtine_redir_ndr
  attr_accessor :qtine_redir_out_atq
  attr_accessor :qtine_redir_out_virus
  attr_accessor :qtine_redir_spam
  attr_accessor :qtine_redir_virus
  attr_accessor :quarantine_links
  attr_accessor :quarsum_links
  attr_accessor :remotecmd_secret
  attr_accessor :spam_notify_on
  attr_accessor :support_contact
  attr_accessor :tagonly_spam
  attr_accessor :timezone
  attr_accessor :tls_notify_admin
  attr_accessor :tls_notify_on
  attr_accessor :virus_clean
  attr_accessor :virus_notify
  attr_accessor :welcome_on
  attr_accessor :zero_hour_notify_on
  attr_accessor :zero_hour_scan
  attr_accessor :zero_hour_waiver

  def initialize(approved_senders = nil, archive = nil, async_bounce = nil, at_notify_on = nil, authentication_data = nil, authentication_type = nil, autocreate_smtp = nil, autocreate_web = nil, blatant_spam = nil, blocked_senders = nil, bounce_fragments = nil, company_name = nil, create_method = nil, created_date = nil, creator = nil, default_message_limit = nil, default_user = nil, disable_first_spam = nil, disposition_virus = nil, ext_encrypt = nil, footer_on = nil, iid = nil, im_enable = nil, im_external_enable = nil, im_proto_enable = nil, is_email_config = nil, lang_locale = nil, lastmod_date = nil, max_message_size = nil, ndr = nil, non_account_bounce = nil, non_account_virus_scan = nil, orgname = nil, out_at_notify_on = nil, outbound_max_message_size = nil, outbound_virus = nil, outbound_virus_disposition = nil, parent_org = nil, qsum_actionable = nil, qsum_enable = nil, qtine_redir_atq = nil, qtine_redir_ndr = nil, qtine_redir_out_atq = nil, qtine_redir_out_virus = nil, qtine_redir_spam = nil, qtine_redir_virus = nil, quarantine_links = nil, quarsum_links = nil, remotecmd_secret = nil, spam_notify_on = nil, support_contact = nil, tagonly_spam = nil, timezone = nil, tls_notify_admin = nil, tls_notify_on = nil, virus_clean = nil, virus_notify = nil, welcome_on = nil, zero_hour_notify_on = nil, zero_hour_scan = nil, zero_hour_waiver = nil)
    @approved_senders = approved_senders
    @archive = archive
    @async_bounce = async_bounce
    @at_notify_on = at_notify_on
    @authentication_data = authentication_data
    @authentication_type = authentication_type
    @autocreate_smtp = autocreate_smtp
    @autocreate_web = autocreate_web
    @blatant_spam = blatant_spam
    @blocked_senders = blocked_senders
    @bounce_fragments = bounce_fragments
    @company_name = company_name
    @create_method = create_method
    @created_date = created_date
    @creator = creator
    @default_message_limit = default_message_limit
    @default_user = default_user
    @disable_first_spam = disable_first_spam
    @disposition_virus = disposition_virus
    @ext_encrypt = ext_encrypt
    @footer_on = footer_on
    @iid = iid
    @im_enable = im_enable
    @im_external_enable = im_external_enable
    @im_proto_enable = im_proto_enable
    @is_email_config = is_email_config
    @lang_locale = lang_locale
    @lastmod_date = lastmod_date
    @max_message_size = max_message_size
    @ndr = ndr
    @non_account_bounce = non_account_bounce
    @non_account_virus_scan = non_account_virus_scan
    @orgname = orgname
    @out_at_notify_on = out_at_notify_on
    @outbound_max_message_size = outbound_max_message_size
    @outbound_virus = outbound_virus
    @outbound_virus_disposition = outbound_virus_disposition
    @parent_org = parent_org
    @qsum_actionable = qsum_actionable
    @qsum_enable = qsum_enable
    @qtine_redir_atq = qtine_redir_atq
    @qtine_redir_ndr = qtine_redir_ndr
    @qtine_redir_out_atq = qtine_redir_out_atq
    @qtine_redir_out_virus = qtine_redir_out_virus
    @qtine_redir_spam = qtine_redir_spam
    @qtine_redir_virus = qtine_redir_virus
    @quarantine_links = quarantine_links
    @quarsum_links = quarsum_links
    @remotecmd_secret = remotecmd_secret
    @spam_notify_on = spam_notify_on
    @support_contact = support_contact
    @tagonly_spam = tagonly_spam
    @timezone = timezone
    @tls_notify_admin = tls_notify_admin
    @tls_notify_on = tls_notify_on
    @virus_clean = virus_clean
    @virus_notify = virus_notify
    @welcome_on = welcome_on
    @zero_hour_notify_on = zero_hour_notify_on
    @zero_hour_scan = zero_hour_scan
    @zero_hour_waiver = zero_hour_waiver
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}orgReportRecord
#   acc_messages - SOAP::SOAPString
#   account - SOAP::SOAPString
#   bad_isp - SOAP::SOAPString
#   bad_sender - SOAP::SOAPString
#   bulk - SOAP::SOAPString
#   bytes - SOAP::SOAPString
#   clean_failures - SOAP::SOAPString
#   cleanings - SOAP::SOAPString
#   commerce - SOAP::SOAPString
#   customerid - SOAP::SOAPString
#   customername - SOAP::SOAPString
#   deliveries - SOAP::SOAPString
#   inf_deliveries - SOAP::SOAPString
#   messages - SOAP::SOAPString
#   mmf - SOAP::SOAPString
#   naughty - SOAP::SOAPString
#   num_bh_messages - SOAP::SOAPString
#   num_bytes - SOAP::SOAPString
#   num_f_messages - SOAP::SOAPString
#   num_messages - SOAP::SOAPString
#   num_q_messages - SOAP::SOAPString
#   num_spams - SOAP::SOAPString
#   num_viruses - SOAP::SOAPString
#   pct_bh_bytes - SOAP::SOAPString
#   pct_bh_messages - SOAP::SOAPString
#   pct_f_bytes - SOAP::SOAPString
#   pct_f_messages - SOAP::SOAPString
#   pct_q_bytes - SOAP::SOAPString
#   pct_q_messages - SOAP::SOAPString
#   productid - SOAP::SOAPString
#   racial - SOAP::SOAPString
#   recip - SOAP::SOAPString
#   sellerid - SOAP::SOAPString
#   ssb - SOAP::SOAPString
#   stored_size - SOAP::SOAPString
#   users - SOAP::SOAPString
class OrgReportRecord
  attr_accessor :acc_messages
  attr_accessor :account
  attr_accessor :bad_isp
  attr_accessor :bad_sender
  attr_accessor :bulk
  attr_accessor :bytes
  attr_accessor :clean_failures
  attr_accessor :cleanings
  attr_accessor :commerce
  attr_accessor :customerid
  attr_accessor :customername
  attr_accessor :deliveries
  attr_accessor :inf_deliveries
  attr_accessor :messages
  attr_accessor :mmf
  attr_accessor :naughty
  attr_accessor :num_bh_messages
  attr_accessor :num_bytes
  attr_accessor :num_f_messages
  attr_accessor :num_messages
  attr_accessor :num_q_messages
  attr_accessor :num_spams
  attr_accessor :num_viruses
  attr_accessor :pct_bh_bytes
  attr_accessor :pct_bh_messages
  attr_accessor :pct_f_bytes
  attr_accessor :pct_f_messages
  attr_accessor :pct_q_bytes
  attr_accessor :pct_q_messages
  attr_accessor :productid
  attr_accessor :racial
  attr_accessor :recip
  attr_accessor :sellerid
  attr_accessor :ssb
  attr_accessor :stored_size
  attr_accessor :users

  def initialize(acc_messages = nil, account = nil, bad_isp = nil, bad_sender = nil, bulk = nil, bytes = nil, clean_failures = nil, cleanings = nil, commerce = nil, customerid = nil, customername = nil, deliveries = nil, inf_deliveries = nil, messages = nil, mmf = nil, naughty = nil, num_bh_messages = nil, num_bytes = nil, num_f_messages = nil, num_messages = nil, num_q_messages = nil, num_spams = nil, num_viruses = nil, pct_bh_bytes = nil, pct_bh_messages = nil, pct_f_bytes = nil, pct_f_messages = nil, pct_q_bytes = nil, pct_q_messages = nil, productid = nil, racial = nil, recip = nil, sellerid = nil, ssb = nil, stored_size = nil, users = nil)
    @acc_messages = acc_messages
    @account = account
    @bad_isp = bad_isp
    @bad_sender = bad_sender
    @bulk = bulk
    @bytes = bytes
    @clean_failures = clean_failures
    @cleanings = cleanings
    @commerce = commerce
    @customerid = customerid
    @customername = customername
    @deliveries = deliveries
    @inf_deliveries = inf_deliveries
    @messages = messages
    @mmf = mmf
    @naughty = naughty
    @num_bh_messages = num_bh_messages
    @num_bytes = num_bytes
    @num_f_messages = num_f_messages
    @num_messages = num_messages
    @num_q_messages = num_q_messages
    @num_spams = num_spams
    @num_viruses = num_viruses
    @pct_bh_bytes = pct_bh_bytes
    @pct_bh_messages = pct_bh_messages
    @pct_f_bytes = pct_f_bytes
    @pct_f_messages = pct_f_messages
    @pct_q_bytes = pct_q_bytes
    @pct_q_messages = pct_q_messages
    @productid = productid
    @racial = racial
    @recip = recip
    @sellerid = sellerid
    @ssb = ssb
    @stored_size = stored_size
    @users = users
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}spoolRecord
#   auto_unspool - SOAP::SOAPString
#   despool_max_connections - SOAP::SOAPString
#   duration - SOAP::SOAPString
#   org - SOAP::SOAPString
#   quota - SOAP::SOAPString
#   spool_delay - SOAP::SOAPString
#   spool_mech - SOAP::SOAPString
#   status - SOAP::SOAPString
#   used_pct - SOAP::SOAPString
#   used_size - SOAP::SOAPString
class SpoolRecord
  attr_accessor :auto_unspool
  attr_accessor :despool_max_connections
  attr_accessor :duration
  attr_accessor :org
  attr_accessor :quota
  attr_accessor :spool_delay
  attr_accessor :spool_mech
  attr_accessor :status
  attr_accessor :used_pct
  attr_accessor :used_size

  def initialize(auto_unspool = nil, despool_max_connections = nil, duration = nil, org = nil, quota = nil, spool_delay = nil, spool_mech = nil, status = nil, used_pct = nil, used_size = nil)
    @auto_unspool = auto_unspool
    @despool_max_connections = despool_max_connections
    @duration = duration
    @org = org
    @quota = quota
    @spool_delay = spool_delay
    @spool_mech = spool_mech
    @status = status
    @used_pct = used_pct
    @used_size = used_size
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}suspenduser
#   authElem - Postini::API::AutomatedBatch::AuthElem
#   userAddressOrId - SOAP::SOAPString
#   optArgStr1 - SOAP::SOAPString
#   optArgStr2 - SOAP::SOAPString
#   optArgStr3 - SOAP::SOAPString
class Suspenduser
  attr_accessor :authElem
  attr_accessor :userAddressOrId
  attr_accessor :optArgStr1
  attr_accessor :optArgStr2
  attr_accessor :optArgStr3

  def initialize(authElem = nil, userAddressOrId = nil, optArgStr1 = nil, optArgStr2 = nil, optArgStr3 = nil)
    @authElem = authElem
    @userAddressOrId = userAddressOrId
    @optArgStr1 = optArgStr1
    @optArgStr2 = optArgStr2
    @optArgStr3 = optArgStr3
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}suspenduserResponse
class SuspenduserResponse
  def initialize
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}test
#   should_work - SOAP::SOAPBoolean
class Test
  attr_accessor :should_work

  def initialize(should_work = nil)
    @should_work = should_work
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}testResponse
#   confirmation_message - SOAP::SOAPString
class TestResponse
  attr_accessor :confirmation_message

  def initialize(confirmation_message = nil)
    @confirmation_message = confirmation_message
  end
end

# {http://postini.com/PSTN/SOAPAPI/v2/automatedbatch}userRecord
#   active - SOAP::SOAPString
#   address - SOAP::SOAPString
#   approved_recipients - SOAP::SOAPString
#   approved_senders - SOAP::SOAPString
#   blocked_senders - SOAP::SOAPString
#   create_method - SOAP::SOAPString
#   created_date - SOAP::SOAPString
#   ext_encrypt - SOAP::SOAPString
#   filter_adult - SOAP::SOAPString
#   filter_bulk - SOAP::SOAPString
#   filter_getrich - SOAP::SOAPString
#   filter_offers - SOAP::SOAPString
#   filter_racial - SOAP::SOAPString
#   initial_password - SOAP::SOAPString
#   junkmail_filter - SOAP::SOAPString
#   lang_locale - SOAP::SOAPString
#   lastmod_date - SOAP::SOAPString
#   message_count - SOAP::SOAPString
#   message_limit - SOAP::SOAPString
#   message_limited - SOAP::SOAPString
#   notice_address - SOAP::SOAPString
#   orgid - SOAP::SOAPString
#   orgtag - SOAP::SOAPString
#   password - SOAP::SOAPString
#   timezone - SOAP::SOAPString
#   user_id - SOAP::SOAPString
#   virus_notify - SOAP::SOAPString
#   virus_state - SOAP::SOAPString
#   weblocked - SOAP::SOAPString
#   welcome_count - SOAP::SOAPString
#   wireless_state - SOAP::SOAPString
class UserRecord
  attr_accessor :active
  attr_accessor :address
  attr_accessor :approved_recipients
  attr_accessor :approved_senders
  attr_accessor :blocked_senders
  attr_accessor :create_method
  attr_accessor :created_date
  attr_accessor :ext_encrypt
  attr_accessor :filter_adult
  attr_accessor :filter_bulk
  attr_accessor :filter_getrich
  attr_accessor :filter_offers
  attr_accessor :filter_racial
  attr_accessor :initial_password
  attr_accessor :junkmail_filter
  attr_accessor :lang_locale
  attr_accessor :lastmod_date
  attr_accessor :message_count
  attr_accessor :message_limit
  attr_accessor :message_limited
  attr_accessor :notice_address
  attr_accessor :orgid
  attr_accessor :orgtag
  attr_accessor :password
  attr_accessor :timezone
  attr_accessor :user_id
  attr_accessor :virus_notify
  attr_accessor :virus_state
  attr_accessor :weblocked
  attr_accessor :welcome_count
  attr_accessor :wireless_state

  def initialize(active = nil, address = nil, approved_recipients = nil, approved_senders = nil, blocked_senders = nil, create_method = nil, created_date = nil, ext_encrypt = nil, filter_adult = nil, filter_bulk = nil, filter_getrich = nil, filter_offers = nil, filter_racial = nil, initial_password = nil, junkmail_filter = nil, lang_locale = nil, lastmod_date = nil, message_count = nil, message_limit = nil, message_limited = nil, notice_address = nil, orgid = nil, orgtag = nil, password = nil, timezone = nil, user_id = nil, virus_notify = nil, virus_state = nil, weblocked = nil, welcome_count = nil, wireless_state = nil)
    @active = active
    @address = address
    @approved_recipients = approved_recipients
    @approved_senders = approved_senders
    @blocked_senders = blocked_senders
    @create_method = create_method
    @created_date = created_date
    @ext_encrypt = ext_encrypt
    @filter_adult = filter_adult
    @filter_bulk = filter_bulk
    @filter_getrich = filter_getrich
    @filter_offers = filter_offers
    @filter_racial = filter_racial
    @initial_password = initial_password
    @junkmail_filter = junkmail_filter
    @lang_locale = lang_locale
    @lastmod_date = lastmod_date
    @message_count = message_count
    @message_limit = message_limit
    @message_limited = message_limited
    @notice_address = notice_address
    @orgid = orgid
    @orgtag = orgtag
    @password = password
    @timezone = timezone
    @user_id = user_id
    @virus_notify = virus_notify
    @virus_state = virus_state
    @weblocked = weblocked
    @welcome_count = welcome_count
    @wireless_state = wireless_state
  end
end


end; end; end
