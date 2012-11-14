class AddAndSetForeignKeyToSchoolAffiliate < ActiveRecord::Migration
  def change
    add_column :school_affiliates, :user_id, :integer
    add_index :school_affiliates, :user_id
  end
end
