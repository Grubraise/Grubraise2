class AddSchoolInfoToParent < ActiveRecord::Migration
  def change
    add_column :parents, :name, :string
    add_column :parents, :school, :string
  end
end
