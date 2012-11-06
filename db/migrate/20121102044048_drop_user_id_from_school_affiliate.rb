class DropUserIdFromSchoolAffiliate < ActiveRecord::Migration
  def up
  	 remove_column :school_affiliates, :user_id
  	  add_column :school_affiliates, :role_id, :integer
  	  add_index :school_affiliates, :role_id
  end

  def down
  end
end
