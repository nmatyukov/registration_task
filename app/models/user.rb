class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :database_authenticatable, :recoverable, :rememberable, :trackable
  devise :registerable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :email, :password
  attr_accessible :name, :surname, :middlename, :date_of_birth
end
