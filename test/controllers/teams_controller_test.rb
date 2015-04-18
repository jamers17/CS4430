require 'test_helper'

class TeamsControllerTest < ActionController::TestCase
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post :create, team: { games: @team.games, goalsAgainst: @team.goalsAgainst, goalsFor: @team.goalsFor, leagueID: @team.leagueID, loses: @team.loses, overTimeLoses: @team.overTimeLoses, penaltyKillChances: @team.penaltyKillChances, pim: @team.pim, playoff: @team.playoff, points: @team.points, powerPlayChances: @team.powerPlayChances, powerPlayGoals: @team.powerPlayGoals, powerPlayGoalsAgainst: @team.powerPlayGoalsAgainst, rank: @team.rank, shootOutLoses: @team.shootOutLoses, shootOutWins: @team.shootOutWins, shorthandedGoalsAgainst: @team.shorthandedGoalsAgainst, shorthandedGoalsFor: @team.shorthandedGoalsFor, teamID: @team.teamID, teamName: @team.teamName, ties: @team.ties, wins: @team.wins, year: @team.year }
    end

    assert_redirected_to team_path(assigns(:team))
  end

  test "should show team" do
    get :show, id: @team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team
    assert_response :success
  end

  test "should update team" do
    patch :update, id: @team, team: { games: @team.games, goalsAgainst: @team.goalsAgainst, goalsFor: @team.goalsFor, leagueID: @team.leagueID, loses: @team.loses, overTimeLoses: @team.overTimeLoses, penaltyKillChances: @team.penaltyKillChances, pim: @team.pim, playoff: @team.playoff, points: @team.points, powerPlayChances: @team.powerPlayChances, powerPlayGoals: @team.powerPlayGoals, powerPlayGoalsAgainst: @team.powerPlayGoalsAgainst, rank: @team.rank, shootOutLoses: @team.shootOutLoses, shootOutWins: @team.shootOutWins, shorthandedGoalsAgainst: @team.shorthandedGoalsAgainst, shorthandedGoalsFor: @team.shorthandedGoalsFor, teamID: @team.teamID, teamName: @team.teamName, ties: @team.ties, wins: @team.wins, year: @team.year }
    assert_redirected_to team_path(assigns(:team))
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete :destroy, id: @team
    end

    assert_redirected_to teams_path
  end
end
