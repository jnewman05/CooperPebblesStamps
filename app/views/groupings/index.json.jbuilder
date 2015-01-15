json.array!(@groupings) do |grouping|
  json.extract! grouping, :id, :id, :name, :abrev
  json.url grouping_url(grouping, format: :json)
end
