json.extract! client, :id, :name, :birthdate, :email, :occupation, :photo, :created_at, :updated_at
json.url client_url(client, format: :json)
