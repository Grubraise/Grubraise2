require 'test_helper'

class SchoolAffiliatesControllerTest < ActionController::TestCase
  setup do
    @school_affiliate = school_affiliates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_affiliates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_affiliate" do
    assert_difference('SchoolAffiliate.count') do
      post :create, school_affiliate: { email: @school_affiliate.email, name: @school_affiliate.name, school: @school_affiliate.school }
    end

    assert_redirected_to school_affiliate_path(assigns(:school_affiliate))
  end

  test "should show school_affiliate" do
    get :show, id: @school_affiliate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_affiliate
    assert_response :success
  end

  test "should update school_affiliate" do
    put :update, id: @school_affiliate, school_affiliate: { email: @school_affiliate.email, name: @school_affiliate.name, school: @school_affiliate.school }
    assert_redirected_to school_affiliate_path(assigns(:school_affiliate))
  end

  test "should destroy school_affiliate" do
    assert_difference('SchoolAffiliate.count', -1) do
      delete :destroy, id: @school_affiliate
    end

    assert_redirected_to school_affiliates_path
  end
end
