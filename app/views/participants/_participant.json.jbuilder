json.extract! event_atendee, :id, :event_id, :user_id, :created_at, :updated_at
json.url event_atendee_url(event_atendee, format: :json)
