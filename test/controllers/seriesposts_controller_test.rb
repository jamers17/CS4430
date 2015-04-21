require 'test_helper'

class SeriespostsControllerTest < ActionController::TestCase
  setup do
    @seriespost = seriesposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seriesposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seriespost" do
    assert_difference('Seriespost.count') do
      post :create, seriespost: { loserTeam: @seriespost.loserTeam, loserTeamLeague: @seriespost.loserTeamLeague, losersGoals: @seriespost.losersGoals, losses: @seriespost.losses, round: @seriespost.round, series: @seriespost.series, ties: @seriespost.ties, winnerTeam: @seriespost.winnerTeam, winnerTeamLeague: @seriespost.winnerTeamLeague, winnersGoals: @seriespost.winnersGoals, wins: @seriespost.wins, year: @seriespost.year }
    end

    assert_redirected_to seriespost_path(assigns(:seriespost))
  end

  test "should show seriespost" do
    get :show, id: @seriespost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seriespost
    assert_response :success
  end

  test "should update seriespost" do
    patch :update, id: @seriespost, seriespost: { loserTeam: @seriespost.loserTeam, loserTeamLeague: @seriespost.loserTeamLeague, losersGoals: @seriespost.losersGoals, losses: @seriespost.losses, round: @seriespost.round, series: @seriespost.series, ties: @seriespost.ties, winnerTeam: @seriespost.winnerTeam, winnerTeamLeague: @seriespost.winnerTeamLeague, winnersGoals: @seriespost.winnersGoals, wins: @seriespost.wins, year: @seriespost.year }
    assert_redirected_to seriespost_path(assigns(:seriespost))
  end

  test "should destroy seriespost" do
    assert_difference('Seriespost.count', -1) do
      delete :destroy, id: @seriespost
    end

    assert_redirected_to seriesposts_path
  end
end
