class ChangeSomeAttributes < ActiveRecord::Migration
  def up
    change_column :users, :email, :string, :default => "", :null => true
    change_column :users, :login, :string, :default => "", :null => false
  end

  def down
    change_column :users, :email, :string, :default => "", :null => false 
    change_column :users, :login, :string, :default => "", :null => true
  end
end
