json.array!(@teams) do |team|
  json.extract! team, :id, :year, :teamName, :leagueID, :teamID, :rank, :playoff, :games, :wins, :losses, :ties, :overTimeLosses, :points, :shootOutWins, :shootOutLosses, :goalsFor, :goalsAgainst, :pim, :powerPlayGoals, :powerPlayChances, :shorthandedGoalsAgainst, :powerPlayGoalsAgainst, :penaltyKillChances, :shortHandedGoalsFor
  json.url team_url(team, format: :json)
end
