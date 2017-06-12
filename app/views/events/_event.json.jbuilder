json.extract! event, :id, :start, :end, :title, :description, :recurring, :scheduler_id, :created_at, :updated_at
json.url event_url(event, format: :json)
