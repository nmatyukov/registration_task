class AddUserInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :middlename, :string
    add_column :users, :age, :date
  end
end
