require 'test_helper'

class GrubraiseTest < ActionDispatch::IntegrationTest

  def verify_link(link, desc)
  	click_link link
  	assert has_content?(desc), "The link #{link} does not go to desired page"
  end
  
  test "Signup goes to thank you" do 
  	visit root_url
  	fill_in "user_name", with: 'Bobo Barker'
  	fill_in "user_school", with: 'brAND hs'
  	fill_in "user_email", with: 'bobbarker@brand.hs'
  	select "Parent", from: 'role_id'
  	click_button 'Start Raising'
  	assert has_content?("Thank You"), "User Signup failed"
  end

  test "Restaurants goes to Restaurant form" do 
  	visit root_url
  	verify_link 'Restaurants', 'Restaurant Form'
  end

  test "How Does It Work? goes to help" do 
  	visit root_url
  	verify_link 'How Does it Work?', 'Getting Started:'
  end

end
