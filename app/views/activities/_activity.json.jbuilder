json.extract! activity, :id, :content, :memo, :comment, :photo, :created_at, :updated_at
json.url activity_url(activity, format: :json)
