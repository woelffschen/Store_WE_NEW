json.array!(@articles) do |article|
  json.extract! article, :id, :title, :description, :image_url, :colour, :size, :price
  json.url article_url(article, format: :json)
end
