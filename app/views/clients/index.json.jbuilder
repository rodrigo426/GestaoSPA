json.array!(@clients) do |client|
  json.name			client.name
#  json.birthdate	client.birthdate.to_s
  json.email    	client.email
  json.occupation	client.occupation
end
