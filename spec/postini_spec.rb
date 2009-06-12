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

end
