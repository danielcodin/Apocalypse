json.array!(@items) do |item|
  json.extract! item, :id, :price, :title, :body, :image
  json.url item_url(item, format: :json)
end
