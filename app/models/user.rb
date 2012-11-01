class User < ActiveRecord::Base
  
  belongs_to :role

  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation, :name, :role_id, :password_digest
  
  validates_uniqueness_of :email



end
