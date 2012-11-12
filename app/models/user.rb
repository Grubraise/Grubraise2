class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lo ckable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_id, :email, :name, :school, :password, :password_confirmation, :remember_me, :is_signup
  # attr_accessible :title, :body
  belongs_to :role
end
