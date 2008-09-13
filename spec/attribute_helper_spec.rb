require File.dirname(__FILE__) + '/spec_helper'

class AttributeTester
  include Postini::Helpers::Attributes
  
  has_attribute :id => :int
  has_attribute :now => :timestamp
  has_attribute :active => :boolean
  has_attributes :address, :name, :type => :string
  
end

describe Postini::Helpers::Attributes do

  describe "and initialization" do
    
    it "should handle no attributes" do
      lambda {
        at = AttributeTester.new
      }.should_not raise_error
    end
    
    it "should set valid attributes" do
      at = AttributeTester.new( :id => 1, :active => true )
      at.id.should be(1)
      at.active.should be_true
    end
    
    it "should raise exceptions on invalid values" do
      lambda {
        AttributeTester.new( :wtf => "is this?" )
      }.should raise_error
    end
  end
  
  describe "and getters/setters" do
    
    before(:each) do
      @at = AttributeTester.new
    end
    
    it "that should act like attr_accessors" do
      @at.active = true
      @at.active.should be_true
    end
  end
end
