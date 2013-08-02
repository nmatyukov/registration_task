class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :database_authenticatable, :recoverable, :rememberable, :trackable
  devise :database_authenticatable, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :email, :password, :password_confirmation
  attr_accessible :name, :surname, :middlename, :date_of_birth

  validates :login, presence:   true,
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates_length_of :login, minimum: 5, maximum: 32

  # после регистрации не нужно создавать сессию и генерировать cookie
  def active_for_authentication?
    false 
  end
end
