json.array!(@categories) do |category|
  json.extract! example, :name
  json.url example_url(example, format: :json)
end
