json.array!(@teams) do |team|
  json.extract! team, :id, :year, :teamName, :leagueID, :teamID, :rank, :playoff, :games, :wins, :loses, :ties, :overTimeLoses, :points, :shootOutWins, :shootOutLoses, :goalsFor, :goalsAgainst, :pim, :powerPlayGoals, :powerPlayChances, :shorthandedGoalsAgainst, :powerPlayGoalsAgainst, :penaltyKillChances, :shorthandedGoalsFor
  json.url team_url(team, format: :json)
end
