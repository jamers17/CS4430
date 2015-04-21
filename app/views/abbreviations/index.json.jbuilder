json.array!(@abbreviations) do |abbreviation|
  json.extract! abbreviation, :id, :type, :abbreviation, :fullName
  json.url abbreviation_url(abbreviation, format: :json)
end
