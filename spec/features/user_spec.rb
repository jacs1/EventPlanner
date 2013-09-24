require 'spec_helper'

describe User do 
  before do 
  	@user = User.new(name: 'Joe', email: 'joseph.simoes@gmail.com')
  end

  it 'should return a name' do 
  	@user[:name].should == 'Joe'
  end

  it 'should have an email address' do 
  	@user[:email].should == "joseph.simoes@gmail.com"
  end
end


