require 'test_helper'

class AbbreviationsControllerTest < ActionController::TestCase
  setup do
    @abbreviation = abbreviations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abbreviations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abbreviation" do
    assert_difference('Abbreviation.count') do
      post :create, abbreviation: { abbreviation: @abbreviation.abbreviation, fullName: @abbreviation.fullName, type: @abbreviation.type }
    end

    assert_redirected_to abbreviation_path(assigns(:abbreviation))
  end

  test "should show abbreviation" do
    get :show, id: @abbreviation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abbreviation
    assert_response :success
  end

  test "should update abbreviation" do
    patch :update, id: @abbreviation, abbreviation: { abbreviation: @abbreviation.abbreviation, fullName: @abbreviation.fullName, type: @abbreviation.type }
    assert_redirected_to abbreviation_path(assigns(:abbreviation))
  end

  test "should destroy abbreviation" do
    assert_difference('Abbreviation.count', -1) do
      delete :destroy, id: @abbreviation
    end

    assert_redirected_to abbreviations_path
  end
end
