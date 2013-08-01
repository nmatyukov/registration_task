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
    user = FactoryGirl.create(:user)
    user.should be_valid
  end 

  it "same users should not be valid" do
    user_1 = FactoryGirl.create(:sample_user)
    user_1.should be_valid

    user_2 = FactoryGirl.create(:sample_user)
    user_2.should_not be_valid
  end

  it "same users with different logins should be valid" do
    user_1 = FactoryGirl.create(:sample_user)
    user_1.should be_valid

    user_2 = FactoryGirl.create(:sample_user_another_login)
    user_2.should be_valid
  end

  it "same users with case different logins should not be valid" do
    user_1 = FactoryGirl.create(:sample_user)
    user_1.should be_valid

    user_2 = FactoryGirl.create(:sample_user_small_case_login)
    user_2.should_not be_valid
  end

  it "different users should be valid" do
    user_1 = FactoryGirl.create(:user)
    user_1.should be_valid

    user_2 = FactoryGirl.create(:user)
    user_2.should be_valid
  end

end
