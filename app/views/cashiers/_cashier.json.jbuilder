json.extract! cashier, :id
json.client cashier.client.name
json.user cashier.user.name
json.therapy cashier.therapy.name
json.url cashier_url(cashier, format: :json)
