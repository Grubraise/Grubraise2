class AddNameAndRoleIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :roleID, :integer
  end
end
