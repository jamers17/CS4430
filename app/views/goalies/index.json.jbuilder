json.array!(@goalies) do |goaly|
  json.extract! goaly, :id, :playoffs, :year, :player, :age, :gp, :w, :l, :ot, :ga, :sa, :sv, :sv%, :gaa, :so, :minutes, :g, :a, :pts, :pim, :firstname, :lastname
  json.url goaly_url(goaly, format: :json)
end
