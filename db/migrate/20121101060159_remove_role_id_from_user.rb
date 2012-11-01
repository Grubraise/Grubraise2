class RemoveRoleIdFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :roleID
  end

  def down
    add_column :users, :roleID, :integer
  end
end
