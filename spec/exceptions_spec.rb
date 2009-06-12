require File.dirname(__FILE__) + '/spec_helper'

describe "Remote exception handling" do
  it "should parse the reason" do
    reason = "StatusException:  You specified 'false' to the test operation - we have raised an exception as you have requested. () (Request ID B7BBF9D8-56D3-11DE-A949-FAAF5903FD3E)"

    exception = Postini::RemoteException.new( reason )
    exception.type.should == "StatusException"
    exception.message.should == "You specified 'false' to the test operation - we have raised an exception as you have requested. ()"
    exception.request_id.should == "B7BBF9D8-56D3-11DE-A949-FAAF5903FD3E"
  end

  it "should delegate the exception correctly" do
    reason = "StatusException:  You specified 'false' to the test operation - we have raised an exception as you have requested. () (Request ID B7BBF9D8-56D3-11DE-A949-FAAF5903FD3E)"

    exception = Postini::RemoteException.delegate( reason )
    exception.should be_a_kind_of( Postini::StatusException )
  end
end
