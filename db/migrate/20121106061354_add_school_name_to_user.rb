class AddSchoolNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :school, :string
    add_column :users, :name, :string
  end
end
