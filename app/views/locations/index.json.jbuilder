json.array!(@locations) do |location|
  json.extract! location, :id, :id, :name, :abrev
  json.url location_url(location, format: :json)
end
