class CreateSchoolAffiliates < ActiveRecord::Migration
  def change
    create_table :school_affiliates do |t|
      t.string :name
      t.string :email
      t.string :school

      t.timestamps
    end
  end
end
