require File.dirname(__FILE__) + '/spec_helper.rb'

describe Postini::User do
  before(:each) do
    @user = Postini::User.new
  end

  it "should be tested" do
    violated "Test me"
  end
end

