require 'test_helper'

class SchoolParentsControllerTest < ActionController::TestCase
  setup do
    @school_parent = school_parents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_parents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_parent" do
    assert_difference('SchoolParent.count') do
      post :create, school_parent: { email: @school_parent.email, name: @school_parent.name, school: @school_parent.school }
    end

    assert_redirected_to school_parent_path(assigns(:school_parent))
  end

  test "should show school_parent" do
    get :show, id: @school_parent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_parent
    assert_response :success
  end

  test "should update school_parent" do
    put :update, id: @school_parent, school_parent: { email: @school_parent.email, name: @school_parent.name, school: @school_parent.school }
    assert_redirected_to school_parent_path(assigns(:school_parent))
  end

  test "should destroy school_parent" do
    assert_difference('SchoolParent.count', -1) do
      delete :destroy, id: @school_parent
    end

    assert_redirected_to school_parents_path
  end
end
