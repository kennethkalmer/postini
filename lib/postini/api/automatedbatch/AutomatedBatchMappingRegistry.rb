require File.dirname(__FILE__) + '/AutomatedBatch.rb'
require 'soap/mapping'

module Postini; module API; module AutomatedBatch

module AutomatedBatchMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAutomatedbatch = "http://postini.com/PSTN/SOAPAPI/v2/automatedbatch"

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::AdminBlockException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "AdminBlockException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::AuthenticationException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "AuthenticationException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::BatchException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "BatchException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::InternalException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "InternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::InvalidValueException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "InvalidValueException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::MalformedKeyException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "MalformedKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::MissingElementException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "MissingElementException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::NoSuchKeyException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "NoSuchKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::StatusException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "StatusException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::UnknownInternalException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "UnknownInternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Addalias,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addalias"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]],
      ["aliasAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasAddress")]],
      ["confirm", ["SOAP::SOAPString", XSD::QName.new(nil, "confirm")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::AddaliasResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addaliasResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Adddomain,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adddomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]],
      ["args", ["Postini::API::AutomatedBatch::Adddomainargs", XSD::QName.new(nil, "args")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::AdddomainResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adddomainResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Adddomainargs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adddomainargs"),
    :schema_element => [
      ["domain", ["SOAP::SOAPString", XSD::QName.new(nil, "domain")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Addorg,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgName", ["SOAP::SOAPString", XSD::QName.new(nil, "orgName")]],
      ["args", ["Postini::API::AutomatedBatch::Addorgargs", XSD::QName.new(nil, "args")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::AddorgResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addorgResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Addorgargs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addorgargs"),
    :schema_element => [
      ["parent", ["SOAP::SOAPString", XSD::QName.new(nil, "parent")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Adduser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adduser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddress")]],
      ["args", ["Postini::API::AutomatedBatch::Adduserargs", XSD::QName.new(nil, "args")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::AdduserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adduserResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Adduserargs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adduserargs"),
    :schema_element => [
      ["org", ["SOAP::SOAPString", XSD::QName.new(nil, "org")], [0, 1]],
      ["welcome", ["SOAP::SOAPString", XSD::QName.new(nil, "welcome")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::AuthElem,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "authElem"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(nil, "apiKey")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["pword", ["SOAP::SOAPString", XSD::QName.new(nil, "pword")], [0, 1]],
      ["xauth", ["SOAP::SOAPString", XSD::QName.new(nil, "xauth")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Checkauth,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "checkauth"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::CheckauthResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "checkauthResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Deletealias,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deletealias"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["aliasAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasAddress")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::DeletealiasResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deletealiasResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Deletedomain,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deletedomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["domainNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "domainNameOrId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::DeletedomainResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deletedomainResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Deleteorg,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deleteorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::DeleteorgResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deleteorgResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Deleteuser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deleteuser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::DeleteuserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deleteuserResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Displaydomain,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displaydomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["domainNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "domainNameOrId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplaydomainResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displaydomainResponse"),
    :schema_element => [
      ["domainRecord", ["Postini::API::AutomatedBatch::DomainRecord", XSD::QName.new(nil, "domainRecord")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Displayorg,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplayorgResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayorgResponse"),
    :schema_element => [
      ["orgRecord", ["Postini::API::AutomatedBatch::OrgRecord", XSD::QName.new(nil, "orgRecord")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Displayspool,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayspool"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["emailOrgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "emailOrgNameOrId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplayspoolResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayspoolResponse"),
    :schema_element => [
      ["spoolRecord", ["Postini::API::AutomatedBatch::SpoolRecord", XSD::QName.new(nil, "spoolRecord")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Displayuser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayuser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplayuserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayuserResponse"),
    :schema_element => [
      ["userRecord", ["Postini::API::AutomatedBatch::UserRecord", XSD::QName.new(nil, "userRecord")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::DomainRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "domainRecord"),
    :schema_element => [
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(nil, "alias")], [0, 1]],
      ["aliasedfrom", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasedfrom")], [0, 1]],
      ["aliasedto", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasedto")], [0, 1]],
      ["domainid", ["SOAP::SOAPString", XSD::QName.new(nil, "domainid")], [0, 1]],
      ["domainname", ["SOAP::SOAPString", XSD::QName.new(nil, "domainname")], [0, 1]],
      ["neworg", ["SOAP::SOAPString", XSD::QName.new(nil, "neworg")], [0, 1]],
      ["org", ["SOAP::SOAPString", XSD::QName.new(nil, "org")], [0, 1]],
      ["substrip", ["SOAP::SOAPString", XSD::QName.new(nil, "substrip")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Getorgreport,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "getorgreport"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]],
      ["args", ["Postini::API::AutomatedBatch::Getorgreportargs", XSD::QName.new(nil, "args")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::GetorgreportResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "getorgreportResponse"),
    :schema_element => [
      ["report", ["Postini::API::AutomatedBatch::OrgReportRecord[]", XSD::QName.new(nil, "report")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Getorgreportargs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "getorgreportargs"),
    :schema_element => [
      ["date", ["SOAP::SOAPString", XSD::QName.new(nil, "date")]],
      ["report", ["SOAP::SOAPString", XSD::QName.new(nil, "report")]],
      ["top", ["SOAP::SOAPString", XSD::QName.new(nil, "top")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Listdomains,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listdomains"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "queryString")]],
      ["queryParams", ["Postini::API::AutomatedBatch::ListdomainsqueryParams", XSD::QName.new(nil, "queryParams")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::ListdomainsResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listdomainsResponse"),
    :schema_element => [
      ["domain", ["Postini::API::AutomatedBatch::DomainRecord[]", XSD::QName.new(nil, "domain")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::ListdomainsqueryParams,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listdomainsqueryParams"),
    :schema_element => [
      ["aliases", ["SOAP::SOAPString", XSD::QName.new(nil, "aliases")], [0, 1]],
      ["childorgs", ["SOAP::SOAPString", XSD::QName.new(nil, "childorgs")], [0, 1]],
      ["v_end", ["SOAP::SOAPString", XSD::QName.new(nil, "end")], [0, 1]],
      ["fields", ["SOAP::SOAPString", XSD::QName.new(nil, "fields")], [0, 1]],
      ["orgtagqs", ["SOAP::SOAPString", XSD::QName.new(nil, "orgtagqs")], [0, 1]],
      ["primaryqs", ["SOAP::SOAPString", XSD::QName.new(nil, "primaryqs")], [0, 1]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["start", ["SOAP::SOAPString", XSD::QName.new(nil, "start")], [0, 1]],
      ["targetOrg", ["SOAP::SOAPString", XSD::QName.new(nil, "targetOrg")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Listorgs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listorgs"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "queryString")]],
      ["queryParams", ["Postini::API::AutomatedBatch::ListorgsqueryParams", XSD::QName.new(nil, "queryParams")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::ListorgsResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listorgsResponse"),
    :schema_element => [
      ["org", ["Postini::API::AutomatedBatch::OrgRecord[]", XSD::QName.new(nil, "org")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::ListorgsqueryParams,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listorgsqueryParams"),
    :schema_element => [
      ["childorgs", ["SOAP::SOAPString", XSD::QName.new(nil, "childorgs")], [0, 1]],
      ["v_end", ["SOAP::SOAPString", XSD::QName.new(nil, "end")], [0, 1]],
      ["fields", ["SOAP::SOAPString", XSD::QName.new(nil, "fields")], [0, 1]],
      ["orgtag", ["SOAP::SOAPString", XSD::QName.new(nil, "orgtag")], [0, 1]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["start", ["SOAP::SOAPString", XSD::QName.new(nil, "start")], [0, 1]],
      ["targetOrg", ["SOAP::SOAPString", XSD::QName.new(nil, "targetOrg")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Listusers,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listusers"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "queryString")]],
      ["queryParams", ["Postini::API::AutomatedBatch::ListusersqueryParams", XSD::QName.new(nil, "queryParams")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::ListusersResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listusersResponse"),
    :schema_element => [
      ["user", ["Postini::API::AutomatedBatch::UserRecord[]", XSD::QName.new(nil, "user")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::ListusersqueryParams,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listusersqueryParams"),
    :schema_element => [
      ["aliases", ["SOAP::SOAPString", XSD::QName.new(nil, "aliases")], [0, 1]],
      ["childorgs", ["SOAP::SOAPString", XSD::QName.new(nil, "childorgs")], [0, 1]],
      ["v_end", ["SOAP::SOAPString", XSD::QName.new(nil, "end")], [0, 1]],
      ["fields", ["SOAP::SOAPString", XSD::QName.new(nil, "fields")], [0, 1]],
      ["orgtagqs", ["SOAP::SOAPString", XSD::QName.new(nil, "orgtagqs")], [0, 1]],
      ["primaryqs", ["SOAP::SOAPString", XSD::QName.new(nil, "primaryqs")], [0, 1]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["start", ["SOAP::SOAPString", XSD::QName.new(nil, "start")], [0, 1]],
      ["targetOrg", ["SOAP::SOAPString", XSD::QName.new(nil, "targetOrg")], [0, 1]],
      ["type_of_user", ["SOAP::SOAPString", XSD::QName.new(nil, "type_of_user")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Modifydomain,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifydomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["domainNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "domainNameOrId")]],
      ["domainModifications", ["Postini::API::AutomatedBatch::DomainRecord", XSD::QName.new(nil, "domainModifications")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::ModifydomainResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifydomainResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Modifyorg,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifyorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]],
      ["orgModifications", ["Postini::API::AutomatedBatch::OrgRecord", XSD::QName.new(nil, "orgModifications")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::ModifyorgResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifyorgResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Modifyuser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifyuser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]],
      ["userModifications", ["Postini::API::AutomatedBatch::UserRecord", XSD::QName.new(nil, "userModifications")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::ModifyuserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifyuserResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::OrgRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "orgRecord"),
    :schema_element => [
      ["approved_senders", ["SOAP::SOAPString", XSD::QName.new(nil, "approved_senders")], [0, 1]],
      ["archive", ["SOAP::SOAPString", XSD::QName.new(nil, "archive")], [0, 1]],
      ["async_bounce", ["SOAP::SOAPString", XSD::QName.new(nil, "async_bounce")], [0, 1]],
      ["at_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "at_notify_on")], [0, 1]],
      ["authentication_data", ["SOAP::SOAPString", XSD::QName.new(nil, "authentication_data")], [0, 1]],
      ["authentication_type", ["SOAP::SOAPString", XSD::QName.new(nil, "authentication_type")], [0, 1]],
      ["autocreate_smtp", ["SOAP::SOAPString", XSD::QName.new(nil, "autocreate_smtp")], [0, 1]],
      ["autocreate_web", ["SOAP::SOAPString", XSD::QName.new(nil, "autocreate_web")], [0, 1]],
      ["blatant_spam", ["SOAP::SOAPString", XSD::QName.new(nil, "blatant_spam")], [0, 1]],
      ["blocked_senders", ["SOAP::SOAPString", XSD::QName.new(nil, "blocked_senders")], [0, 1]],
      ["bounce_fragments", ["SOAP::SOAPString", XSD::QName.new(nil, "bounce_fragments")], [0, 1]],
      ["company_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company_name")], [0, 1]],
      ["create_method", ["SOAP::SOAPString", XSD::QName.new(nil, "create_method")], [0, 1]],
      ["created_date", ["SOAP::SOAPString", XSD::QName.new(nil, "created_date")], [0, 1]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")], [0, 1]],
      ["default_message_limit", ["SOAP::SOAPString", XSD::QName.new(nil, "default_message_limit")], [0, 1]],
      ["default_user", ["SOAP::SOAPString", XSD::QName.new(nil, "default_user")], [0, 1]],
      ["disable_first_spam", ["SOAP::SOAPString", XSD::QName.new(nil, "disable_first_spam")], [0, 1]],
      ["disposition_virus", ["SOAP::SOAPString", XSD::QName.new(nil, "disposition_virus")], [0, 1]],
      ["ext_encrypt", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_encrypt")], [0, 1]],
      ["footer_on", ["SOAP::SOAPString", XSD::QName.new(nil, "footer_on")], [0, 1]],
      ["iid", ["SOAP::SOAPString", XSD::QName.new(nil, "iid")], [0, 1]],
      ["im_enable", ["SOAP::SOAPString", XSD::QName.new(nil, "im_enable")], [0, 1]],
      ["im_external_enable", ["SOAP::SOAPString", XSD::QName.new(nil, "im_external_enable")], [0, 1]],
      ["im_proto_enable", ["SOAP::SOAPString", XSD::QName.new(nil, "im_proto_enable")], [0, 1]],
      ["is_email_config", ["SOAP::SOAPString", XSD::QName.new(nil, "is_email_config")], [0, 1]],
      ["lang_locale", ["SOAP::SOAPString", XSD::QName.new(nil, "lang_locale")], [0, 1]],
      ["lastmod_date", ["SOAP::SOAPString", XSD::QName.new(nil, "lastmod_date")], [0, 1]],
      ["max_message_size", ["SOAP::SOAPString", XSD::QName.new(nil, "max_message_size")], [0, 1]],
      ["ndr", ["SOAP::SOAPString", XSD::QName.new(nil, "ndr")], [0, 1]],
      ["non_account_bounce", ["SOAP::SOAPString", XSD::QName.new(nil, "non_account_bounce")], [0, 1]],
      ["non_account_virus_scan", ["SOAP::SOAPString", XSD::QName.new(nil, "non_account_virus_scan")], [0, 1]],
      ["orgname", ["SOAP::SOAPString", XSD::QName.new(nil, "orgname")], [0, 1]],
      ["out_at_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "out_at_notify_on")], [0, 1]],
      ["outbound_max_message_size", ["SOAP::SOAPString", XSD::QName.new(nil, "outbound_max_message_size")], [0, 1]],
      ["outbound_virus", ["SOAP::SOAPString", XSD::QName.new(nil, "outbound_virus")], [0, 1]],
      ["outbound_virus_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "outbound_virus_disposition")], [0, 1]],
      ["parent_org", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_org")], [0, 1]],
      ["qsum_actionable", ["SOAP::SOAPString", XSD::QName.new(nil, "qsum_actionable")], [0, 1]],
      ["qsum_enable", ["SOAP::SOAPString", XSD::QName.new(nil, "qsum_enable")], [0, 1]],
      ["qtine_redir_atq", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_atq")], [0, 1]],
      ["qtine_redir_ndr", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_ndr")], [0, 1]],
      ["qtine_redir_out_atq", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_out_atq")], [0, 1]],
      ["qtine_redir_out_virus", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_out_virus")], [0, 1]],
      ["qtine_redir_spam", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_spam")], [0, 1]],
      ["qtine_redir_virus", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_virus")], [0, 1]],
      ["quarantine_links", ["SOAP::SOAPString", XSD::QName.new(nil, "quarantine_links")], [0, 1]],
      ["quarsum_links", ["SOAP::SOAPString", XSD::QName.new(nil, "quarsum_links")], [0, 1]],
      ["remotecmd_secret", ["SOAP::SOAPString", XSD::QName.new(nil, "remotecmd_secret")], [0, 1]],
      ["spam_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "spam_notify_on")], [0, 1]],
      ["support_contact", ["SOAP::SOAPString", XSD::QName.new(nil, "support_contact")], [0, 1]],
      ["tagonly_spam", ["SOAP::SOAPString", XSD::QName.new(nil, "tagonly_spam")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")], [0, 1]],
      ["tls_notify_admin", ["SOAP::SOAPString", XSD::QName.new(nil, "tls_notify_admin")], [0, 1]],
      ["tls_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "tls_notify_on")], [0, 1]],
      ["virus_clean", ["SOAP::SOAPString", XSD::QName.new(nil, "virus_clean")], [0, 1]],
      ["virus_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "virus_notify")], [0, 1]],
      ["welcome_on", ["SOAP::SOAPString", XSD::QName.new(nil, "welcome_on")], [0, 1]],
      ["zero_hour_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "zero_hour_notify_on")], [0, 1]],
      ["zero_hour_scan", ["SOAP::SOAPString", XSD::QName.new(nil, "zero_hour_scan")], [0, 1]],
      ["zero_hour_waiver", ["SOAP::SOAPString", XSD::QName.new(nil, "zero_hour_waiver")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::OrgReportRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "orgReportRecord"),
    :schema_element => [
      ["acc_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "acc_messages")], [0, 1]],
      ["account", ["SOAP::SOAPString", XSD::QName.new(nil, "account")], [0, 1]],
      ["bad_isp", ["SOAP::SOAPString", XSD::QName.new(nil, "bad_isp")], [0, 1]],
      ["bad_sender", ["SOAP::SOAPString", XSD::QName.new(nil, "bad_sender")], [0, 1]],
      ["bulk", ["SOAP::SOAPString", XSD::QName.new(nil, "bulk")], [0, 1]],
      ["bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "bytes")], [0, 1]],
      ["clean_failures", ["SOAP::SOAPString", XSD::QName.new(nil, "clean_failures")], [0, 1]],
      ["cleanings", ["SOAP::SOAPString", XSD::QName.new(nil, "cleanings")], [0, 1]],
      ["commerce", ["SOAP::SOAPString", XSD::QName.new(nil, "commerce")], [0, 1]],
      ["customerid", ["SOAP::SOAPString", XSD::QName.new(nil, "customerid")], [0, 1]],
      ["customername", ["SOAP::SOAPString", XSD::QName.new(nil, "customername")], [0, 1]],
      ["deliveries", ["SOAP::SOAPString", XSD::QName.new(nil, "deliveries")], [0, 1]],
      ["inf_deliveries", ["SOAP::SOAPString", XSD::QName.new(nil, "inf_deliveries")], [0, 1]],
      ["messages", ["SOAP::SOAPString", XSD::QName.new(nil, "messages")], [0, 1]],
      ["mmf", ["SOAP::SOAPString", XSD::QName.new(nil, "mmf")], [0, 1]],
      ["naughty", ["SOAP::SOAPString", XSD::QName.new(nil, "naughty")], [0, 1]],
      ["num_bh_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "num_bh_messages")], [0, 1]],
      ["num_bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "num_bytes")], [0, 1]],
      ["num_f_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "num_f_messages")], [0, 1]],
      ["num_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "num_messages")], [0, 1]],
      ["num_q_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "num_q_messages")], [0, 1]],
      ["num_spams", ["SOAP::SOAPString", XSD::QName.new(nil, "num_spams")], [0, 1]],
      ["num_viruses", ["SOAP::SOAPString", XSD::QName.new(nil, "num_viruses")], [0, 1]],
      ["pct_bh_bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_bh_bytes")], [0, 1]],
      ["pct_bh_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_bh_messages")], [0, 1]],
      ["pct_f_bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_f_bytes")], [0, 1]],
      ["pct_f_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_f_messages")], [0, 1]],
      ["pct_q_bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_q_bytes")], [0, 1]],
      ["pct_q_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_q_messages")], [0, 1]],
      ["productid", ["SOAP::SOAPString", XSD::QName.new(nil, "productid")], [0, 1]],
      ["racial", ["SOAP::SOAPString", XSD::QName.new(nil, "racial")], [0, 1]],
      ["recip", ["SOAP::SOAPString", XSD::QName.new(nil, "recip")], [0, 1]],
      ["sellerid", ["SOAP::SOAPString", XSD::QName.new(nil, "sellerid")], [0, 1]],
      ["ssb", ["SOAP::SOAPString", XSD::QName.new(nil, "ssb")], [0, 1]],
      ["stored_size", ["SOAP::SOAPString", XSD::QName.new(nil, "stored_size")], [0, 1]],
      ["users", ["SOAP::SOAPString", XSD::QName.new(nil, "users")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::SpoolRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "spoolRecord"),
    :schema_element => [
      ["auto_unspool", ["SOAP::SOAPString", XSD::QName.new(nil, "auto_unspool")], [0, 1]],
      ["despool_max_connections", ["SOAP::SOAPString", XSD::QName.new(nil, "despool_max_connections")], [0, 1]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(nil, "duration")], [0, 1]],
      ["org", ["SOAP::SOAPString", XSD::QName.new(nil, "org")], [0, 1]],
      ["quota", ["SOAP::SOAPString", XSD::QName.new(nil, "quota")], [0, 1]],
      ["spool_delay", ["SOAP::SOAPString", XSD::QName.new(nil, "spool_delay")], [0, 1]],
      ["spool_mech", ["SOAP::SOAPString", XSD::QName.new(nil, "spool_mech")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["used_pct", ["SOAP::SOAPString", XSD::QName.new(nil, "used_pct")], [0, 1]],
      ["used_size", ["SOAP::SOAPString", XSD::QName.new(nil, "used_size")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Suspenduser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "suspenduser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]],
      ["optArgStr1", ["SOAP::SOAPString", XSD::QName.new(nil, "optArgStr1")], [0, 1]],
      ["optArgStr2", ["SOAP::SOAPString", XSD::QName.new(nil, "optArgStr2")], [0, 1]],
      ["optArgStr3", ["SOAP::SOAPString", XSD::QName.new(nil, "optArgStr3")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::SuspenduserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "suspenduserResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::Test,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "test"),
    :schema_element => [
      ["should_work", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "should_work")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::TestResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "testResponse"),
    :schema_element => [
      ["confirmation_message", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmation_message")]]
    ]
  )

  EncodedRegistry.register(
    :class => Postini::API::AutomatedBatch::UserRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "userRecord"),
    :schema_element => [
      ["active", ["SOAP::SOAPString", XSD::QName.new(nil, "active")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["approved_recipients", ["SOAP::SOAPString", XSD::QName.new(nil, "approved_recipients")], [0, 1]],
      ["approved_senders", ["SOAP::SOAPString", XSD::QName.new(nil, "approved_senders")], [0, 1]],
      ["blocked_senders", ["SOAP::SOAPString", XSD::QName.new(nil, "blocked_senders")], [0, 1]],
      ["create_method", ["SOAP::SOAPString", XSD::QName.new(nil, "create_method")], [0, 1]],
      ["created_date", ["SOAP::SOAPString", XSD::QName.new(nil, "created_date")], [0, 1]],
      ["ext_encrypt", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_encrypt")], [0, 1]],
      ["filter_adult", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_adult")], [0, 1]],
      ["filter_bulk", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_bulk")], [0, 1]],
      ["filter_getrich", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_getrich")], [0, 1]],
      ["filter_offers", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_offers")], [0, 1]],
      ["filter_racial", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_racial")], [0, 1]],
      ["initial_password", ["SOAP::SOAPString", XSD::QName.new(nil, "initial_password")], [0, 1]],
      ["junkmail_filter", ["SOAP::SOAPString", XSD::QName.new(nil, "junkmail_filter")], [0, 1]],
      ["lang_locale", ["SOAP::SOAPString", XSD::QName.new(nil, "lang_locale")], [0, 1]],
      ["lastmod_date", ["SOAP::SOAPString", XSD::QName.new(nil, "lastmod_date")], [0, 1]],
      ["message_count", ["SOAP::SOAPString", XSD::QName.new(nil, "message_count")], [0, 1]],
      ["message_limit", ["SOAP::SOAPString", XSD::QName.new(nil, "message_limit")], [0, 1]],
      ["message_limited", ["SOAP::SOAPString", XSD::QName.new(nil, "message_limited")], [0, 1]],
      ["notice_address", ["SOAP::SOAPString", XSD::QName.new(nil, "notice_address")], [0, 1]],
      ["orgid", ["SOAP::SOAPString", XSD::QName.new(nil, "orgid")], [0, 1]],
      ["orgtag", ["SOAP::SOAPString", XSD::QName.new(nil, "orgtag")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")], [0, 1]],
      ["user_id", ["SOAP::SOAPString", XSD::QName.new(nil, "user_id")], [0, 1]],
      ["virus_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "virus_notify")], [0, 1]],
      ["virus_state", ["SOAP::SOAPString", XSD::QName.new(nil, "virus_state")], [0, 1]],
      ["weblocked", ["SOAP::SOAPString", XSD::QName.new(nil, "weblocked")], [0, 1]],
      ["welcome_count", ["SOAP::SOAPString", XSD::QName.new(nil, "welcome_count")], [0, 1]],
      ["wireless_state", ["SOAP::SOAPString", XSD::QName.new(nil, "wireless_state")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AdminBlockException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "AdminBlockException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AuthenticationException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "AuthenticationException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::BatchException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "BatchException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::InternalException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "InternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::InvalidValueException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "InvalidValueException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::MalformedKeyException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "MalformedKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::MissingElementException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "MissingElementException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::NoSuchKeyException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "NoSuchKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::StatusException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "StatusException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::UnknownInternalException,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "UnknownInternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Addalias,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addalias"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]],
      ["aliasAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasAddress")]],
      ["confirm", ["SOAP::SOAPString", XSD::QName.new(nil, "confirm")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AddaliasResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addaliasResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Adddomain,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adddomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]],
      ["args", ["Postini::API::AutomatedBatch::Adddomainargs", XSD::QName.new(nil, "args")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AdddomainResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adddomainResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Adddomainargs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adddomainargs"),
    :schema_element => [
      ["domain", ["SOAP::SOAPString", XSD::QName.new(nil, "domain")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Addorg,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgName", ["SOAP::SOAPString", XSD::QName.new(nil, "orgName")]],
      ["args", ["Postini::API::AutomatedBatch::Addorgargs", XSD::QName.new(nil, "args")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AddorgResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addorgResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Addorgargs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "addorgargs"),
    :schema_element => [
      ["parent", ["SOAP::SOAPString", XSD::QName.new(nil, "parent")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Adduser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adduser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddress")]],
      ["args", ["Postini::API::AutomatedBatch::Adduserargs", XSD::QName.new(nil, "args")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AdduserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adduserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Adduserargs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "adduserargs"),
    :schema_element => [
      ["org", ["SOAP::SOAPString", XSD::QName.new(nil, "org")], [0, 1]],
      ["welcome", ["SOAP::SOAPString", XSD::QName.new(nil, "welcome")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AuthElem,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "authElem"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(nil, "apiKey")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["pword", ["SOAP::SOAPString", XSD::QName.new(nil, "pword")], [0, 1]],
      ["xauth", ["SOAP::SOAPString", XSD::QName.new(nil, "xauth")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Checkauth,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "checkauth"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::CheckauthResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "checkauthResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Deletealias,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deletealias"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["aliasAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasAddress")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DeletealiasResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deletealiasResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Deletedomain,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deletedomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["domainNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "domainNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DeletedomainResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deletedomainResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Deleteorg,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deleteorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DeleteorgResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deleteorgResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Deleteuser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deleteuser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DeleteuserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "deleteuserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Displaydomain,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displaydomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["domainNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "domainNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplaydomainResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displaydomainResponse"),
    :schema_element => [
      ["domainRecord", ["Postini::API::AutomatedBatch::DomainRecord", XSD::QName.new(nil, "domainRecord")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Displayorg,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplayorgResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayorgResponse"),
    :schema_element => [
      ["orgRecord", ["Postini::API::AutomatedBatch::OrgRecord", XSD::QName.new(nil, "orgRecord")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Displayspool,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayspool"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["emailOrgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "emailOrgNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplayspoolResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayspoolResponse"),
    :schema_element => [
      ["spoolRecord", ["Postini::API::AutomatedBatch::SpoolRecord", XSD::QName.new(nil, "spoolRecord")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Displayuser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayuser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplayuserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "displayuserResponse"),
    :schema_element => [
      ["userRecord", ["Postini::API::AutomatedBatch::UserRecord", XSD::QName.new(nil, "userRecord")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DomainRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "domainRecord"),
    :schema_element => [
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(nil, "alias")], [0, 1]],
      ["aliasedfrom", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasedfrom")], [0, 1]],
      ["aliasedto", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasedto")], [0, 1]],
      ["domainid", ["SOAP::SOAPString", XSD::QName.new(nil, "domainid")], [0, 1]],
      ["domainname", ["SOAP::SOAPString", XSD::QName.new(nil, "domainname")], [0, 1]],
      ["neworg", ["SOAP::SOAPString", XSD::QName.new(nil, "neworg")], [0, 1]],
      ["org", ["SOAP::SOAPString", XSD::QName.new(nil, "org")], [0, 1]],
      ["substrip", ["SOAP::SOAPString", XSD::QName.new(nil, "substrip")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Getorgreport,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "getorgreport"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]],
      ["args", ["Postini::API::AutomatedBatch::Getorgreportargs", XSD::QName.new(nil, "args")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::GetorgreportResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "getorgreportResponse"),
    :schema_element => [
      ["report", ["Postini::API::AutomatedBatch::OrgReportRecord[]", XSD::QName.new(nil, "report")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Getorgreportargs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "getorgreportargs"),
    :schema_element => [
      ["date", ["SOAP::SOAPString", XSD::QName.new(nil, "date")]],
      ["report", ["SOAP::SOAPString", XSD::QName.new(nil, "report")]],
      ["top", ["SOAP::SOAPString", XSD::QName.new(nil, "top")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Listdomains,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listdomains"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "queryString")]],
      ["queryParams", ["Postini::API::AutomatedBatch::ListdomainsqueryParams", XSD::QName.new(nil, "queryParams")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ListdomainsResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listdomainsResponse"),
    :schema_element => [
      ["domain", ["Postini::API::AutomatedBatch::DomainRecord[]", XSD::QName.new(nil, "domain")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ListdomainsqueryParams,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listdomainsqueryParams"),
    :schema_element => [
      ["aliases", ["SOAP::SOAPString", XSD::QName.new(nil, "aliases")], [0, 1]],
      ["childorgs", ["SOAP::SOAPString", XSD::QName.new(nil, "childorgs")], [0, 1]],
      ["v_end", ["SOAP::SOAPString", XSD::QName.new(nil, "end")], [0, 1]],
      ["fields", ["SOAP::SOAPString", XSD::QName.new(nil, "fields")], [0, 1]],
      ["orgtagqs", ["SOAP::SOAPString", XSD::QName.new(nil, "orgtagqs")], [0, 1]],
      ["primaryqs", ["SOAP::SOAPString", XSD::QName.new(nil, "primaryqs")], [0, 1]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["start", ["SOAP::SOAPString", XSD::QName.new(nil, "start")], [0, 1]],
      ["targetOrg", ["SOAP::SOAPString", XSD::QName.new(nil, "targetOrg")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Listorgs,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listorgs"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "queryString")]],
      ["queryParams", ["Postini::API::AutomatedBatch::ListorgsqueryParams", XSD::QName.new(nil, "queryParams")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ListorgsResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listorgsResponse"),
    :schema_element => [
      ["org", ["Postini::API::AutomatedBatch::OrgRecord[]", XSD::QName.new(nil, "org")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ListorgsqueryParams,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listorgsqueryParams"),
    :schema_element => [
      ["childorgs", ["SOAP::SOAPString", XSD::QName.new(nil, "childorgs")], [0, 1]],
      ["v_end", ["SOAP::SOAPString", XSD::QName.new(nil, "end")], [0, 1]],
      ["fields", ["SOAP::SOAPString", XSD::QName.new(nil, "fields")], [0, 1]],
      ["orgtag", ["SOAP::SOAPString", XSD::QName.new(nil, "orgtag")], [0, 1]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["start", ["SOAP::SOAPString", XSD::QName.new(nil, "start")], [0, 1]],
      ["targetOrg", ["SOAP::SOAPString", XSD::QName.new(nil, "targetOrg")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Listusers,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listusers"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "queryString")]],
      ["queryParams", ["Postini::API::AutomatedBatch::ListusersqueryParams", XSD::QName.new(nil, "queryParams")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ListusersResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listusersResponse"),
    :schema_element => [
      ["user", ["Postini::API::AutomatedBatch::UserRecord[]", XSD::QName.new(nil, "user")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ListusersqueryParams,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "listusersqueryParams"),
    :schema_element => [
      ["aliases", ["SOAP::SOAPString", XSD::QName.new(nil, "aliases")], [0, 1]],
      ["childorgs", ["SOAP::SOAPString", XSD::QName.new(nil, "childorgs")], [0, 1]],
      ["v_end", ["SOAP::SOAPString", XSD::QName.new(nil, "end")], [0, 1]],
      ["fields", ["SOAP::SOAPString", XSD::QName.new(nil, "fields")], [0, 1]],
      ["orgtagqs", ["SOAP::SOAPString", XSD::QName.new(nil, "orgtagqs")], [0, 1]],
      ["primaryqs", ["SOAP::SOAPString", XSD::QName.new(nil, "primaryqs")], [0, 1]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["start", ["SOAP::SOAPString", XSD::QName.new(nil, "start")], [0, 1]],
      ["targetOrg", ["SOAP::SOAPString", XSD::QName.new(nil, "targetOrg")], [0, 1]],
      ["type_of_user", ["SOAP::SOAPString", XSD::QName.new(nil, "type_of_user")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Modifydomain,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifydomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["domainNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "domainNameOrId")]],
      ["domainModifications", ["Postini::API::AutomatedBatch::DomainRecord", XSD::QName.new(nil, "domainModifications")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ModifydomainResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifydomainResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Modifyorg,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifyorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]],
      ["orgModifications", ["Postini::API::AutomatedBatch::OrgRecord", XSD::QName.new(nil, "orgModifications")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ModifyorgResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifyorgResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Modifyuser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifyuser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]],
      ["userModifications", ["Postini::API::AutomatedBatch::UserRecord", XSD::QName.new(nil, "userModifications")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ModifyuserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "modifyuserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::OrgRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "orgRecord"),
    :schema_element => [
      ["approved_senders", ["SOAP::SOAPString", XSD::QName.new(nil, "approved_senders")], [0, 1]],
      ["archive", ["SOAP::SOAPString", XSD::QName.new(nil, "archive")], [0, 1]],
      ["async_bounce", ["SOAP::SOAPString", XSD::QName.new(nil, "async_bounce")], [0, 1]],
      ["at_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "at_notify_on")], [0, 1]],
      ["authentication_data", ["SOAP::SOAPString", XSD::QName.new(nil, "authentication_data")], [0, 1]],
      ["authentication_type", ["SOAP::SOAPString", XSD::QName.new(nil, "authentication_type")], [0, 1]],
      ["autocreate_smtp", ["SOAP::SOAPString", XSD::QName.new(nil, "autocreate_smtp")], [0, 1]],
      ["autocreate_web", ["SOAP::SOAPString", XSD::QName.new(nil, "autocreate_web")], [0, 1]],
      ["blatant_spam", ["SOAP::SOAPString", XSD::QName.new(nil, "blatant_spam")], [0, 1]],
      ["blocked_senders", ["SOAP::SOAPString", XSD::QName.new(nil, "blocked_senders")], [0, 1]],
      ["bounce_fragments", ["SOAP::SOAPString", XSD::QName.new(nil, "bounce_fragments")], [0, 1]],
      ["company_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company_name")], [0, 1]],
      ["create_method", ["SOAP::SOAPString", XSD::QName.new(nil, "create_method")], [0, 1]],
      ["created_date", ["SOAP::SOAPString", XSD::QName.new(nil, "created_date")], [0, 1]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")], [0, 1]],
      ["default_message_limit", ["SOAP::SOAPString", XSD::QName.new(nil, "default_message_limit")], [0, 1]],
      ["default_user", ["SOAP::SOAPString", XSD::QName.new(nil, "default_user")], [0, 1]],
      ["disable_first_spam", ["SOAP::SOAPString", XSD::QName.new(nil, "disable_first_spam")], [0, 1]],
      ["disposition_virus", ["SOAP::SOAPString", XSD::QName.new(nil, "disposition_virus")], [0, 1]],
      ["ext_encrypt", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_encrypt")], [0, 1]],
      ["footer_on", ["SOAP::SOAPString", XSD::QName.new(nil, "footer_on")], [0, 1]],
      ["iid", ["SOAP::SOAPString", XSD::QName.new(nil, "iid")], [0, 1]],
      ["im_enable", ["SOAP::SOAPString", XSD::QName.new(nil, "im_enable")], [0, 1]],
      ["im_external_enable", ["SOAP::SOAPString", XSD::QName.new(nil, "im_external_enable")], [0, 1]],
      ["im_proto_enable", ["SOAP::SOAPString", XSD::QName.new(nil, "im_proto_enable")], [0, 1]],
      ["is_email_config", ["SOAP::SOAPString", XSD::QName.new(nil, "is_email_config")], [0, 1]],
      ["lang_locale", ["SOAP::SOAPString", XSD::QName.new(nil, "lang_locale")], [0, 1]],
      ["lastmod_date", ["SOAP::SOAPString", XSD::QName.new(nil, "lastmod_date")], [0, 1]],
      ["max_message_size", ["SOAP::SOAPString", XSD::QName.new(nil, "max_message_size")], [0, 1]],
      ["ndr", ["SOAP::SOAPString", XSD::QName.new(nil, "ndr")], [0, 1]],
      ["non_account_bounce", ["SOAP::SOAPString", XSD::QName.new(nil, "non_account_bounce")], [0, 1]],
      ["non_account_virus_scan", ["SOAP::SOAPString", XSD::QName.new(nil, "non_account_virus_scan")], [0, 1]],
      ["orgname", ["SOAP::SOAPString", XSD::QName.new(nil, "orgname")], [0, 1]],
      ["out_at_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "out_at_notify_on")], [0, 1]],
      ["outbound_max_message_size", ["SOAP::SOAPString", XSD::QName.new(nil, "outbound_max_message_size")], [0, 1]],
      ["outbound_virus", ["SOAP::SOAPString", XSD::QName.new(nil, "outbound_virus")], [0, 1]],
      ["outbound_virus_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "outbound_virus_disposition")], [0, 1]],
      ["parent_org", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_org")], [0, 1]],
      ["qsum_actionable", ["SOAP::SOAPString", XSD::QName.new(nil, "qsum_actionable")], [0, 1]],
      ["qsum_enable", ["SOAP::SOAPString", XSD::QName.new(nil, "qsum_enable")], [0, 1]],
      ["qtine_redir_atq", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_atq")], [0, 1]],
      ["qtine_redir_ndr", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_ndr")], [0, 1]],
      ["qtine_redir_out_atq", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_out_atq")], [0, 1]],
      ["qtine_redir_out_virus", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_out_virus")], [0, 1]],
      ["qtine_redir_spam", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_spam")], [0, 1]],
      ["qtine_redir_virus", ["SOAP::SOAPString", XSD::QName.new(nil, "qtine_redir_virus")], [0, 1]],
      ["quarantine_links", ["SOAP::SOAPString", XSD::QName.new(nil, "quarantine_links")], [0, 1]],
      ["quarsum_links", ["SOAP::SOAPString", XSD::QName.new(nil, "quarsum_links")], [0, 1]],
      ["remotecmd_secret", ["SOAP::SOAPString", XSD::QName.new(nil, "remotecmd_secret")], [0, 1]],
      ["spam_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "spam_notify_on")], [0, 1]],
      ["support_contact", ["SOAP::SOAPString", XSD::QName.new(nil, "support_contact")], [0, 1]],
      ["tagonly_spam", ["SOAP::SOAPString", XSD::QName.new(nil, "tagonly_spam")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")], [0, 1]],
      ["tls_notify_admin", ["SOAP::SOAPString", XSD::QName.new(nil, "tls_notify_admin")], [0, 1]],
      ["tls_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "tls_notify_on")], [0, 1]],
      ["virus_clean", ["SOAP::SOAPString", XSD::QName.new(nil, "virus_clean")], [0, 1]],
      ["virus_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "virus_notify")], [0, 1]],
      ["welcome_on", ["SOAP::SOAPString", XSD::QName.new(nil, "welcome_on")], [0, 1]],
      ["zero_hour_notify_on", ["SOAP::SOAPString", XSD::QName.new(nil, "zero_hour_notify_on")], [0, 1]],
      ["zero_hour_scan", ["SOAP::SOAPString", XSD::QName.new(nil, "zero_hour_scan")], [0, 1]],
      ["zero_hour_waiver", ["SOAP::SOAPString", XSD::QName.new(nil, "zero_hour_waiver")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::OrgReportRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "orgReportRecord"),
    :schema_element => [
      ["acc_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "acc_messages")], [0, 1]],
      ["account", ["SOAP::SOAPString", XSD::QName.new(nil, "account")], [0, 1]],
      ["bad_isp", ["SOAP::SOAPString", XSD::QName.new(nil, "bad_isp")], [0, 1]],
      ["bad_sender", ["SOAP::SOAPString", XSD::QName.new(nil, "bad_sender")], [0, 1]],
      ["bulk", ["SOAP::SOAPString", XSD::QName.new(nil, "bulk")], [0, 1]],
      ["bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "bytes")], [0, 1]],
      ["clean_failures", ["SOAP::SOAPString", XSD::QName.new(nil, "clean_failures")], [0, 1]],
      ["cleanings", ["SOAP::SOAPString", XSD::QName.new(nil, "cleanings")], [0, 1]],
      ["commerce", ["SOAP::SOAPString", XSD::QName.new(nil, "commerce")], [0, 1]],
      ["customerid", ["SOAP::SOAPString", XSD::QName.new(nil, "customerid")], [0, 1]],
      ["customername", ["SOAP::SOAPString", XSD::QName.new(nil, "customername")], [0, 1]],
      ["deliveries", ["SOAP::SOAPString", XSD::QName.new(nil, "deliveries")], [0, 1]],
      ["inf_deliveries", ["SOAP::SOAPString", XSD::QName.new(nil, "inf_deliveries")], [0, 1]],
      ["messages", ["SOAP::SOAPString", XSD::QName.new(nil, "messages")], [0, 1]],
      ["mmf", ["SOAP::SOAPString", XSD::QName.new(nil, "mmf")], [0, 1]],
      ["naughty", ["SOAP::SOAPString", XSD::QName.new(nil, "naughty")], [0, 1]],
      ["num_bh_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "num_bh_messages")], [0, 1]],
      ["num_bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "num_bytes")], [0, 1]],
      ["num_f_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "num_f_messages")], [0, 1]],
      ["num_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "num_messages")], [0, 1]],
      ["num_q_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "num_q_messages")], [0, 1]],
      ["num_spams", ["SOAP::SOAPString", XSD::QName.new(nil, "num_spams")], [0, 1]],
      ["num_viruses", ["SOAP::SOAPString", XSD::QName.new(nil, "num_viruses")], [0, 1]],
      ["pct_bh_bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_bh_bytes")], [0, 1]],
      ["pct_bh_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_bh_messages")], [0, 1]],
      ["pct_f_bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_f_bytes")], [0, 1]],
      ["pct_f_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_f_messages")], [0, 1]],
      ["pct_q_bytes", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_q_bytes")], [0, 1]],
      ["pct_q_messages", ["SOAP::SOAPString", XSD::QName.new(nil, "pct_q_messages")], [0, 1]],
      ["productid", ["SOAP::SOAPString", XSD::QName.new(nil, "productid")], [0, 1]],
      ["racial", ["SOAP::SOAPString", XSD::QName.new(nil, "racial")], [0, 1]],
      ["recip", ["SOAP::SOAPString", XSD::QName.new(nil, "recip")], [0, 1]],
      ["sellerid", ["SOAP::SOAPString", XSD::QName.new(nil, "sellerid")], [0, 1]],
      ["ssb", ["SOAP::SOAPString", XSD::QName.new(nil, "ssb")], [0, 1]],
      ["stored_size", ["SOAP::SOAPString", XSD::QName.new(nil, "stored_size")], [0, 1]],
      ["users", ["SOAP::SOAPString", XSD::QName.new(nil, "users")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::SpoolRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "spoolRecord"),
    :schema_element => [
      ["auto_unspool", ["SOAP::SOAPString", XSD::QName.new(nil, "auto_unspool")], [0, 1]],
      ["despool_max_connections", ["SOAP::SOAPString", XSD::QName.new(nil, "despool_max_connections")], [0, 1]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(nil, "duration")], [0, 1]],
      ["org", ["SOAP::SOAPString", XSD::QName.new(nil, "org")], [0, 1]],
      ["quota", ["SOAP::SOAPString", XSD::QName.new(nil, "quota")], [0, 1]],
      ["spool_delay", ["SOAP::SOAPString", XSD::QName.new(nil, "spool_delay")], [0, 1]],
      ["spool_mech", ["SOAP::SOAPString", XSD::QName.new(nil, "spool_mech")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["used_pct", ["SOAP::SOAPString", XSD::QName.new(nil, "used_pct")], [0, 1]],
      ["used_size", ["SOAP::SOAPString", XSD::QName.new(nil, "used_size")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Suspenduser,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "suspenduser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]],
      ["optArgStr1", ["SOAP::SOAPString", XSD::QName.new(nil, "optArgStr1")], [0, 1]],
      ["optArgStr2", ["SOAP::SOAPString", XSD::QName.new(nil, "optArgStr2")], [0, 1]],
      ["optArgStr3", ["SOAP::SOAPString", XSD::QName.new(nil, "optArgStr3")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::SuspenduserResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "suspenduserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Test,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "test"),
    :schema_element => [
      ["should_work", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "should_work")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::TestResponse,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "testResponse"),
    :schema_element => [
      ["confirmation_message", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmation_message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::UserRecord,
    :schema_type => XSD::QName.new(NsAutomatedbatch, "userRecord"),
    :schema_element => [
      ["active", ["SOAP::SOAPString", XSD::QName.new(nil, "active")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["approved_recipients", ["SOAP::SOAPString", XSD::QName.new(nil, "approved_recipients")], [0, 1]],
      ["approved_senders", ["SOAP::SOAPString", XSD::QName.new(nil, "approved_senders")], [0, 1]],
      ["blocked_senders", ["SOAP::SOAPString", XSD::QName.new(nil, "blocked_senders")], [0, 1]],
      ["create_method", ["SOAP::SOAPString", XSD::QName.new(nil, "create_method")], [0, 1]],
      ["created_date", ["SOAP::SOAPString", XSD::QName.new(nil, "created_date")], [0, 1]],
      ["ext_encrypt", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_encrypt")], [0, 1]],
      ["filter_adult", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_adult")], [0, 1]],
      ["filter_bulk", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_bulk")], [0, 1]],
      ["filter_getrich", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_getrich")], [0, 1]],
      ["filter_offers", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_offers")], [0, 1]],
      ["filter_racial", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_racial")], [0, 1]],
      ["initial_password", ["SOAP::SOAPString", XSD::QName.new(nil, "initial_password")], [0, 1]],
      ["junkmail_filter", ["SOAP::SOAPString", XSD::QName.new(nil, "junkmail_filter")], [0, 1]],
      ["lang_locale", ["SOAP::SOAPString", XSD::QName.new(nil, "lang_locale")], [0, 1]],
      ["lastmod_date", ["SOAP::SOAPString", XSD::QName.new(nil, "lastmod_date")], [0, 1]],
      ["message_count", ["SOAP::SOAPString", XSD::QName.new(nil, "message_count")], [0, 1]],
      ["message_limit", ["SOAP::SOAPString", XSD::QName.new(nil, "message_limit")], [0, 1]],
      ["message_limited", ["SOAP::SOAPString", XSD::QName.new(nil, "message_limited")], [0, 1]],
      ["notice_address", ["SOAP::SOAPString", XSD::QName.new(nil, "notice_address")], [0, 1]],
      ["orgid", ["SOAP::SOAPString", XSD::QName.new(nil, "orgid")], [0, 1]],
      ["orgtag", ["SOAP::SOAPString", XSD::QName.new(nil, "orgtag")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")], [0, 1]],
      ["user_id", ["SOAP::SOAPString", XSD::QName.new(nil, "user_id")], [0, 1]],
      ["virus_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "virus_notify")], [0, 1]],
      ["virus_state", ["SOAP::SOAPString", XSD::QName.new(nil, "virus_state")], [0, 1]],
      ["weblocked", ["SOAP::SOAPString", XSD::QName.new(nil, "weblocked")], [0, 1]],
      ["welcome_count", ["SOAP::SOAPString", XSD::QName.new(nil, "welcome_count")], [0, 1]],
      ["wireless_state", ["SOAP::SOAPString", XSD::QName.new(nil, "wireless_state")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AdminBlockException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "AdminBlockException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AuthenticationException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "AuthenticationException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::BatchException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "BatchException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::InternalException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "InternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::InvalidValueException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "InvalidValueException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::MalformedKeyException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "MalformedKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::MissingElementException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "MissingElementException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::NoSuchKeyException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "NoSuchKeyException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::StatusException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "StatusException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::UnknownInternalException,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "UnknownInternalException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Addalias,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "addalias"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]],
      ["aliasAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasAddress")]],
      ["confirm", ["SOAP::SOAPString", XSD::QName.new(nil, "confirm")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AddaliasResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "addaliasResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Adddomain,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "adddomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]],
      ["args", ["Postini::API::AutomatedBatch::Adddomainargs", XSD::QName.new(nil, "args")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AdddomainResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "adddomainResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Addorg,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "addorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgName", ["SOAP::SOAPString", XSD::QName.new(nil, "orgName")]],
      ["args", ["Postini::API::AutomatedBatch::Addorgargs", XSD::QName.new(nil, "args")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AddorgResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "addorgResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Adduser,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "adduser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddress")]],
      ["args", ["Postini::API::AutomatedBatch::Adduserargs", XSD::QName.new(nil, "args")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::AdduserResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "adduserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Checkauth,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "checkauth"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::CheckauthResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "checkauthResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Deletealias,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "deletealias"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["aliasAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "aliasAddress")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DeletealiasResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "deletealiasResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Deletedomain,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "deletedomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["domainNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "domainNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DeletedomainResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "deletedomainResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Deleteorg,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "deleteorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DeleteorgResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "deleteorgResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Deleteuser,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "deleteuser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DeleteuserResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "deleteuserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Displaydomain,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "displaydomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["domainNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "domainNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplaydomainResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "displaydomainResponse"),
    :schema_element => [
      ["domainRecord", ["Postini::API::AutomatedBatch::DomainRecord", XSD::QName.new(nil, "domainRecord")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Displayorg,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "displayorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplayorgResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "displayorgResponse"),
    :schema_element => [
      ["orgRecord", ["Postini::API::AutomatedBatch::OrgRecord", XSD::QName.new(nil, "orgRecord")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Displayspool,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "displayspool"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["emailOrgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "emailOrgNameOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplayspoolResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "displayspoolResponse"),
    :schema_element => [
      ["spoolRecord", ["Postini::API::AutomatedBatch::SpoolRecord", XSD::QName.new(nil, "spoolRecord")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Displayuser,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "displayuser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::DisplayuserResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "displayuserResponse"),
    :schema_element => [
      ["userRecord", ["Postini::API::AutomatedBatch::UserRecord", XSD::QName.new(nil, "userRecord")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Getorgreport,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "getorgreport"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]],
      ["args", ["Postini::API::AutomatedBatch::Getorgreportargs", XSD::QName.new(nil, "args")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::GetorgreportResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "getorgreportResponse"),
    :schema_element => [
      ["report", ["Postini::API::AutomatedBatch::OrgReportRecord[]", XSD::QName.new(nil, "report")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Listdomains,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "listdomains"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "queryString")]],
      ["queryParams", ["Postini::API::AutomatedBatch::ListdomainsqueryParams", XSD::QName.new(nil, "queryParams")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ListdomainsResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "listdomainsResponse"),
    :schema_element => [
      ["domain", ["Postini::API::AutomatedBatch::DomainRecord[]", XSD::QName.new(nil, "domain")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Listorgs,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "listorgs"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "queryString")]],
      ["queryParams", ["Postini::API::AutomatedBatch::ListorgsqueryParams", XSD::QName.new(nil, "queryParams")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ListorgsResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "listorgsResponse"),
    :schema_element => [
      ["org", ["Postini::API::AutomatedBatch::OrgRecord[]", XSD::QName.new(nil, "org")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Listusers,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "listusers"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "queryString")]],
      ["queryParams", ["Postini::API::AutomatedBatch::ListusersqueryParams", XSD::QName.new(nil, "queryParams")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ListusersResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "listusersResponse"),
    :schema_element => [
      ["user", ["Postini::API::AutomatedBatch::UserRecord[]", XSD::QName.new(nil, "user")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Modifydomain,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "modifydomain"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["domainNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "domainNameOrId")]],
      ["domainModifications", ["Postini::API::AutomatedBatch::DomainRecord", XSD::QName.new(nil, "domainModifications")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ModifydomainResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "modifydomainResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Modifyorg,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "modifyorg"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["orgNameOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "orgNameOrId")]],
      ["orgModifications", ["Postini::API::AutomatedBatch::OrgRecord", XSD::QName.new(nil, "orgModifications")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ModifyorgResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "modifyorgResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Modifyuser,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "modifyuser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]],
      ["userModifications", ["Postini::API::AutomatedBatch::UserRecord", XSD::QName.new(nil, "userModifications")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::ModifyuserResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "modifyuserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Suspenduser,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "suspenduser"),
    :schema_element => [
      ["authElem", ["Postini::API::AutomatedBatch::AuthElem", XSD::QName.new(nil, "authElem")]],
      ["userAddressOrId", ["SOAP::SOAPString", XSD::QName.new(nil, "userAddressOrId")]],
      ["optArgStr1", ["SOAP::SOAPString", XSD::QName.new(nil, "optArgStr1")], [0, 1]],
      ["optArgStr2", ["SOAP::SOAPString", XSD::QName.new(nil, "optArgStr2")], [0, 1]],
      ["optArgStr3", ["SOAP::SOAPString", XSD::QName.new(nil, "optArgStr3")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::SuspenduserResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "suspenduserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::Test,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "test"),
    :schema_element => [
      ["should_work", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "should_work")]]
    ]
  )

  LiteralRegistry.register(
    :class => Postini::API::AutomatedBatch::TestResponse,
    :schema_name => XSD::QName.new(NsAutomatedbatch, "testResponse"),
    :schema_element => [
      ["confirmation_message", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmation_message")]]
    ]
  )
end

end; end; end
