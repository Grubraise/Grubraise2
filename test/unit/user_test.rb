require 'test_helper'

class UserTest < ActiveSupport::TestCase

  
  # test "the truth" do
  #   assert true
  # end

  test "User has Role" do
  	user = FactoryGirl.create(:user)
  	id = user.role_id

  	if id.between?(1,4)
  		valid = true
  	end

  	assert valid, "User has a role id of #{id}"
  end

  test "User has default Pasword" do
  	user = FactoryGirl.create(:user)
  	assert_not_nil user.password, "The password is nil"
  	assert_not_equal "",  user.password, "The password is blank"
  end


end
