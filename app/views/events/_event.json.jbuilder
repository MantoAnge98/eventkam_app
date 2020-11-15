json.extract! event, :id, :title, :image, :content, :date_start, :date_end, :created_at, :updated_at
json.url event_url(event, format: :json)
