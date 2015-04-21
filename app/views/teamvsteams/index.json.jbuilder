json.array!(@teamvsteams) do |teamvsteam|
  json.extract! teamvsteam, :id, :year, :league, :team, :opposingTeam, :wins, :losses, :ties, :otl
  json.url teamvsteam_url(teamvsteam, format: :json)
end
