class RemoveEmailIndex < ActiveRecord::Migration
  def up
    remove_index(:users, :name => 'index_users_on_email')
    add_index "users", ["login"], :name => "index_users_on_login", :unique => true
  end

  def down
    remove_index(:users, :name => 'index_users_on_login')
    add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  end
end
