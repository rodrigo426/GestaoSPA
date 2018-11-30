json.extract! event, :id, :description, :price, :paid, :color, :start, :end, :created_at, :updated_at
json.title event.name
if event.paid == false
	json.color "#ff0000"
else
	json.color "#00c90e"
end
json.url event_url(event, format: :html)
json.update_url event_path(event, method: :patch)
json.edit_url edit_event_path(event)