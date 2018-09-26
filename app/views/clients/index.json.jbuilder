json.array!(@clients) do |client|
  json.name        client.name
  json.email       client.email
  json.photo    client.photo
end
