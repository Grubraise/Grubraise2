class SetForeignKeyToUser < ActiveRecord::Migration
  def up
  	add_index :users, :role_id
  end

  def down
  end
end
