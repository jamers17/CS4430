require 'test_helper'

class GoaliesControllerTest < ActionController::TestCase
  setup do
    @goaly = goalies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goalies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goaly" do
    assert_difference('Goalie.count') do
      post :create, goaly: { a: @goaly.a, age: @goaly.age, firstname: @goaly.firstname, g: @goaly.g, ga: @goaly.ga, gaa: @goaly.gaa, gp: @goaly.gp, l: @goaly.l, lastname: @goaly.lastname, minutes: @goaly.minutes, ot: @goaly.ot, pim: @goaly.pim, player: @goaly.player, playoffs: @goaly.playoffs, pts: @goaly.pts, sa: @goaly.sa, so: @goaly.so, sv%: @goaly.sv%, sv: @goaly.sv, w: @goaly.w, year: @goaly.year }
    end

    assert_redirected_to goaly_path(assigns(:goaly))
  end

  test "should show goaly" do
    get :show, id: @goaly
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goaly
    assert_response :success
  end

  test "should update goaly" do
    patch :update, id: @goaly, goaly: { a: @goaly.a, age: @goaly.age, firstname: @goaly.firstname, g: @goaly.g, ga: @goaly.ga, gaa: @goaly.gaa, gp: @goaly.gp, l: @goaly.l, lastname: @goaly.lastname, minutes: @goaly.minutes, ot: @goaly.ot, pim: @goaly.pim, player: @goaly.player, playoffs: @goaly.playoffs, pts: @goaly.pts, sa: @goaly.sa, so: @goaly.so, sv%: @goaly.sv%, sv: @goaly.sv, w: @goaly.w, year: @goaly.year }
    assert_redirected_to goaly_path(assigns(:goaly))
  end

  test "should destroy goaly" do
    assert_difference('Goalie.count', -1) do
      delete :destroy, id: @goaly
    end

    assert_redirected_to goalies_path
  end
end
