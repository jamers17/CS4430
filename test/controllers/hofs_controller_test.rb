require 'test_helper'

class HofsControllerTest < ActionController::TestCase
  setup do
    @hof = hofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hof" do
    assert_difference('Hof.count') do
      post :create, hof: { category: @hof.category, name: @hof.name, year: @hof.year }
    end

    assert_redirected_to hof_path(assigns(:hof))
  end

  test "should show hof" do
    get :show, id: @hof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hof
    assert_response :success
  end

  test "should update hof" do
    patch :update, id: @hof, hof: { category: @hof.category, name: @hof.name, year: @hof.year }
    assert_redirected_to hof_path(assigns(:hof))
  end

  test "should destroy hof" do
    assert_difference('Hof.count', -1) do
      delete :destroy, id: @hof
    end

    assert_redirected_to hofs_path
  end
end
