json.extract! article, :id, :title, :headline, :body, :created_at, :updated_at
json.url article_url(article, format: :json)
