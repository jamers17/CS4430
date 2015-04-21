json.array!(@seriesposts) do |seriespost|
  json.extract! seriespost, :id, :year, :round, :series, :winnerTeam, :winnerTeamLeague, :loserTeam, :loserTeamLeague, :wins, :losses, :ties, :winnersGoals, :losersGoals
  json.url seriespost_url(seriespost, format: :json)
end
