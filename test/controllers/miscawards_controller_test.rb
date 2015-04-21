require 'test_helper'

class MiscawardsControllerTest < ActionController::TestCase
  setup do
    @miscaward = miscawards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miscawards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miscaward" do
    assert_difference('Miscaward.count') do
      post :create, miscaward: { award: @miscaward.award, league: @miscaward.league, name: @miscaward.name, note: @miscaward.note, year: @miscaward.year }
    end

    assert_redirected_to miscaward_path(assigns(:miscaward))
  end

  test "should show miscaward" do
    get :show, id: @miscaward
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miscaward
    assert_response :success
  end

  test "should update miscaward" do
    patch :update, id: @miscaward, miscaward: { award: @miscaward.award, league: @miscaward.league, name: @miscaward.name, note: @miscaward.note, year: @miscaward.year }
    assert_redirected_to miscaward_path(assigns(:miscaward))
  end

  test "should destroy miscaward" do
    assert_difference('Miscaward.count', -1) do
      delete :destroy, id: @miscaward
    end

    assert_redirected_to miscawards_path
  end
end
