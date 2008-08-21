require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Postini master module" do
  
  it "must allow for setting the API Access Key" do
    Postini.api_key = "1234567890"
    Postini.api_key.should eql("1234567890")
  end
  
  it "must allow for setting the system number" do
    Postini.system_number = 200
    Postini.system_number.should be(200)
  end
  
  it "must allow for setting a username" do
    Postini.username = 'administrator@jumboinc.com'
    Postini.username.should eql('administrator@jumboinc.com')
  end
  
  it "must allow for setting a password" do
    Postini.password = 'secret'
    Postini.password.should eql('secret')
  end
  
  it "must allow for setting a XAuth string" do
    Postini.xauth = 'format_unknown_to_author'
    Postini.xauth.should eql('format_unknown_to_author')
  end
  
  it "should return a pre-built URI if no user is provided" do
    Postini.system_number = 0
    Postini.endpoint_uri.should eql('https://api-s0.postini.com/api2/automatedbatch')
  end
  
  it "should use the Endpoint Resolver service if a user is provided" do
    mock_remote = Postini::API::EndpointResolver::EndpointResolverPort.new
    mock_remote.expects( :getServiceEndpoint ).with(anything).returns(
      OpenStruct.new( :endpointURI => 'https://api-s0.postini.com/api2/automatedbatch' )
    )
    Postini::API::EndpointResolver::EndpointResolverPort.expects(:new).returns(mock_remote)
    
    Postini.endpoint_uri( 'support@jumboinc.com' ).should eql('https://api-s0.postini.com/api2/automatedbatch')
    
    pending "IMPROVE"
  end
  
  it "should generate auth elements without user details" do
    pending
  end
  
  it "should generate auth elements with username and passwords" do
    pending
  end
  
  it "should generate auth elements with usernames and xauth strings" do
    pending
  end
end
