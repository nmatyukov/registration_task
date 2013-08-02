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

  it "should validate login between 5..32 characters" do
    user = FactoryGirl.build(:user)
    user.login = 'nik'
    user.save
    user.should_not be_valid

    user.login = (0...33).map{ ('a'..'z').to_a[rand(26)] }.join
    user.save
    user.should_not be_valid
  end

  it "should validate not empty password" do
    user = FactoryGirl.build(:user)
    user.password = ''
    user.save
    user.should_not be_valid
  end

  it "same users creations should raise an error" do
    user_1 = FactoryGirl.create(:sample_user)
    user_1.should be_valid

    expect { user_2 = FactoryGirl.create(:sample_user) }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "same users with different logins should be valid" do
    user_1 = FactoryGirl.create(:sample_user)
    user_1.should be_valid

    user_2 = FactoryGirl.create(:sample_user_another_login)
    user_2.should be_valid
  end

  it "login uniqueness should be case insensitive" do
    user_1 = FactoryGirl.create(:sample_user)
    user_1.should be_valid

    expect { user_2 = FactoryGirl.create(:sample_user_small_case_login) }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "different users should be valid" do
    user_1 = FactoryGirl.create(:user)
    user_1.should be_valid

    user_2 = FactoryGirl.create(:user)
    user_2.should be_valid
  end

end
