class AddUseIdToSchoolParent < ActiveRecord::Migration
  def change
  	remove_column :school_affiliates, :user_id
    add_column :school_parents, :user_id, :integer
    add_index :school_parents, :user_id
  end
end
