json.extract! schedule, :id, :description
json.title schedule.client.name
json.user schedule.user.name
json.therapy schedule.therapy
json.start schedule.start_time
json.end schedule.end_time
json.color '#' + schedule.user.color
json.url schedule_url(schedule, format: :html)
