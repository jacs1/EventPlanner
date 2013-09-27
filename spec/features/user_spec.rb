require 'spec_helper'

describe User do 
  before do 
  	@user = FactoryGirl.build(:user)
  end

  it 'should return a name' do 
  	@user[:name].should == 'Bob'
  end

  it 'should have an email address' do 
  	@user[:email].should == "bob@gmail.com"
  end
  
  context 'associations' do 
  	it { should have_many(:events) }
  end
end

