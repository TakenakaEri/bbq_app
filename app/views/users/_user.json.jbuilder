json.extract! user, :id, :name, :bio, :twitter_url, :created_at, :updated_at
json.url user_url(user, format: :json)
