require File.dirname(__FILE__) + '/spec_helper.rb'

describe Postini::User do
  
  before(:each) do
    Postini.stubs(:endpoint_uri).with(anything).returns('http://example.com/api2/automatedbatch')
    Postini.stubs(:auth).with(anything).returns(
      Postini::API::AutomatedBatch::AuthElem.new(
        '0000000000000000', 'postini4r@jumboinc.com', 'secret', nil
      )
    )
  end
  
  describe "provides convenience methods" do
    it "load a user" do
      address = 'support@jumboinc.com'

      mock_request = Postini::API::AutomatedBatch::Displayuser.new( Postini.auth, address )
      Postini::API::AutomatedBatch::Displayuser.expects(:new).with( Postini.auth, address ).returns( mock_request )

      mock_remote = Postini::API::AutomatedBatch::AutomatedBatchPort.new( Postini.endpoint_uri(address) )
      Postini::User.expects(:automated_batch_port).with(address).returns(mock_remote)

      mock_user = Postini::API::AutomatedBatch::UserRecord.new
      mock_user.address = address
      mock_user.user_id = 0

      mock_response = Postini::API::AutomatedBatch::DisplayuserResponse.new( mock_user )

      mock_remote.expects(:displayuser).with(mock_request).returns(mock_response)

      ####

      user = Postini::User.find( address )

      user.address.should eql(address)
      user.id.should be(0)
    end

    it "destroy a user" do
      address = 'support@jumboinc.com'

      mock_remote = Postini::API::AutomatedBatch::AutomatedBatchPort.new( Postini.endpoint_uri(address) )
      mock_remote.expects(:deleteuser).with(anything)
      Postini::User.expects(:automated_batch_port).with(address).returns(mock_remote)

      Postini::User.destroy(address)
      
      pending "IMPROVE"
    end
  end

  describe "when new" do
    before(:each) do
      @user = Postini::User.new( :active => "no" )
    end

    it "should convert the options hash into instance variables" do
      @user.active.should eql("no")
    end

    it "should indicate so" do
      @user.should be_new
    end

    it "should only be created if all validations pass" do
      Postini::User.expects(:automated_batch_port).never

      @user.create.should be_false
    end

    it "should be created if valid" do
      @user.address = 'support@jumboinc.com'
      @user.orgid = 'support'
      
      mock_args = Postini::API::AutomatedBatch::Adduserargs.new( @user.orgid, 0 )
      Postini::API::AutomatedBatch::Adduserargs.expects(:new).with( @user.orgid, 0 ).returns(mock_args)
      
      mock_request = Postini::API::AutomatedBatch::Adduser.new( Postini.auth, @user.address, mock_args )
      Postini::API::AutomatedBatch::Adduser.expects(:new).with( Postini.auth, @user.address, mock_args ).returns(mock_request)
      
      mock_remote = Postini::API::AutomatedBatch::AutomatedBatchPort.new( Postini.endpoint_uri )
      Postini::User.expects(:automated_batch_port).returns(mock_remote)
      mock_remote.expects(:adduser).with(mock_request)
      
      ####
      
      @user.create
    end
  end

  describe "when loaded" do
    before(:each) do
      @user = Postini::User.new(
        :id => 0,
        :address => 'support@jumboinc.com',
        :orgid => 'support'
      )
    end

    it "cannot be created again" do
      Postini::User.expects(:automated_batch_port).never

      @user.create.should be_false
    end

    it "can be deleted" do
      Postini::User.expects(:destroy).with(@user.address)

      @user.destroy
    end
  end

  describe "and aliases" do
    before(:each) do
      @user = Postini::User.new( :address => 'support@jumboinc.com' )

    end

    it "can be loaded" do
      mock_remote = Postini::API::AutomatedBatch::AutomatedBatchPort.new( Postini.endpoint_uri(@user.address) )
      Postini::User.expects(:automated_batch_port).with(@user.address).returns(mock_remote)
      mock_remote.expects(:listusers).with(anything).returns([])
      
      @user.aliases.should be_empty
      
      pending "IMPROVE"
    end
    
    it "can be added to" do
      pending
    end
    
    it "can be removed" do
      pending
    end
    
    it "can be cleared" do
      pending
    end
  end
end
