json.extract! blogdb, :id, :username, :content, :created_at, :updated_at
json.url blogdb_url(blogdb, format: :json)
