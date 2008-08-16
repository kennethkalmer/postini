require File.dirname(__FILE__) + '/spec_helper'

describe Postini::Domain do
  
  describe "a new instance" do
    before(:each) do
      @domain = Postini::Domain.new
    end
    
    it "should indicate a new instance" do
      @domain.should be_new
    end
  end
  
  describe "a popuated instance" do
    
    before(:each) do
      @domain = Postini::Domain.new( :id => 100, :name => 'example.com' )
    end
    
    it "should have attibutes passed to #new" do
      @domain.id.should be(100)
      @domain.name.should eql('example.com')
    end
    
    it "should not be new" do
      @domain.should_not be_new
    end
    
    it "should not be created" do
      @domain.create.should be_false
    end
  end
  
end

