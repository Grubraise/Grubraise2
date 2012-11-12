class AddIsSignupToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_signup, :boolean, :default => false
  end
end
