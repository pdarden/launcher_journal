json.array!(@entries) do |entry|
  json.extract! example, :title, :body, :category_id
  json.url example_url(example, format: :json)
end
