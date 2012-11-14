class AddPasswordDigestToSchoolAffiliate < ActiveRecord::Migration
  def change
    add_column :school_affiliates, :password_digest, :string
  end
end
