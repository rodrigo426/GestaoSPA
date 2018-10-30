json.extract! user, :id, :name, :kind, :status, :notes, :color, :created_at, :updated_at
json.url user_url(user, format: :json)
