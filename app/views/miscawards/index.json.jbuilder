json.array!(@miscawards) do |miscaward|
  json.extract! miscaward, :id, :name, :award, :year, :league, :note
  json.url miscaward_url(miscaward, format: :json)
end
