json.extract! schedule, :id, :user_id, :client_id, :description, :start_time, :end_time, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
