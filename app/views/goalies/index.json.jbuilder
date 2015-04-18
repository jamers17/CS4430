json.array!(@goalies) do |goalie|
  json.extract! goaly, :id, :playoffs, :year, :player, :age, :team, :gp, :w, :l, :ot, :ga, :sa, :sv, :svp, :gaa, :so, :minutes, :g, :a, :pts, :pim, :firstname, :lastname
  json.url goalie_url(goalie, format: :json)
end
