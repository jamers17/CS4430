json.array!(@hofs) do |hof|
  json.extract! hof, :id, :name, :year, :category
  json.url hof_url(hof, format: :json)
end
