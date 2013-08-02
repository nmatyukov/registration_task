class DisableEmailValidation < ActiveRecord::Migration
  def up
    change_column :users, :email, :string, :unique => false 
  end

  def down
    change_column :users, :email, :string, :unique => true 
  end
end
