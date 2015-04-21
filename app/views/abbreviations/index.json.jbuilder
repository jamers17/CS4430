json.array!(@abbreviations) do |abbreviation|
  json.extract! abbreviation, :id, :category, :abrv, :fullName
  json.url abbreviation_url(abbreviation, format: :json)
end
