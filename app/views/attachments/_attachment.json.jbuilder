json.extract! attachment, :id, :name, :file, :size, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)
