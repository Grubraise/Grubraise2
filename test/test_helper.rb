ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
<<<<<<< HEAD
require 'capybara/rails'

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
=======

class ActiveSupport::TestCase
>>>>>>> ae9e3170c2598ab51cb2531e85f4178a12654188
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

<<<<<<< HEAD

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
	include Capybara::DSL

	def teardown
		Capybara.reset_sessions!
		Capybara.use_default_driver
	end
end
=======
  # Add more helper methods to be used by all tests here...
end
>>>>>>> ae9e3170c2598ab51cb2531e85f4178a12654188
