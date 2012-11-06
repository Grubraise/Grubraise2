class AddUserIdToSchoolAffiliate < ActiveRecord::Migration
  def change
  	remove_column :school_affiliates, :role_id
    add_column :school_affiliates, :user_id, :integer
    add_index :school_affiliates, :user_id
  end
end
