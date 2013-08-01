require 'spec_helper'

describe User do

  it { should respond_to(:login) }
  it { should respond_to(:email) }
  it { should respond_to(:encrypted_password) }
  it { should respond_to(:name) }
  it { should respond_to(:surname) }
  it { should respond_to(:middlename) }
  it { should respond_to(:date_of_birth) }


  it "should be valid" do
    user = FactoryGirl.build(:user)
    user.should be_valid
  end 
end
