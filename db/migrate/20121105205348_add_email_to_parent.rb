class AddEmailToParent < ActiveRecord::Migration
  def change
    add_column :school_affiliates, :role_id, :integer
  end
end
