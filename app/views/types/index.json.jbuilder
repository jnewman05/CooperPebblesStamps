json.array!(@types) do |type|
  json.extract! type, :id, :id, :name, :abrev, :createat, :updatear
  json.url type_url(type, format: :json)
end
