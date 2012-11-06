class DropParentSchool < ActiveRecord::Migration
  def up
  	drop_table :parents
  	drop_table :school_affiliates
  	drop_table :school_parents
  end

  def down
  end
end
