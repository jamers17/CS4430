require 'test_helper'

class TeamvsteamsControllerTest < ActionController::TestCase
  setup do
    @teamvsteam = teamvsteams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teamvsteams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teamvsteam" do
    assert_difference('Teamvsteam.count') do
      post :create, teamvsteam: { league: @teamvsteam.league, losses: @teamvsteam.losses, opposingTeam: @teamvsteam.opposingTeam, otl: @teamvsteam.otl, team: @teamvsteam.team, ties: @teamvsteam.ties, wins: @teamvsteam.wins, year: @teamvsteam.year }
    end

    assert_redirected_to teamvsteam_path(assigns(:teamvsteam))
  end

  test "should show teamvsteam" do
    get :show, id: @teamvsteam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teamvsteam
    assert_response :success
  end

  test "should update teamvsteam" do
    patch :update, id: @teamvsteam, teamvsteam: { league: @teamvsteam.league, losses: @teamvsteam.losses, opposingTeam: @teamvsteam.opposingTeam, otl: @teamvsteam.otl, team: @teamvsteam.team, ties: @teamvsteam.ties, wins: @teamvsteam.wins, year: @teamvsteam.year }
    assert_redirected_to teamvsteam_path(assigns(:teamvsteam))
  end

  test "should destroy teamvsteam" do
    assert_difference('Teamvsteam.count', -1) do
      delete :destroy, id: @teamvsteam
    end

    assert_redirected_to teamvsteams_path
  end
end
