class AddRoleIdToParent < ActiveRecord::Migration
  def change
    add_column :parents, :role_id, :integer
  end
end
