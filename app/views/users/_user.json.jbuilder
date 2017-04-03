json.extract! user, :id, :name, :username, :email, :password_digest, :matricula, :created_at, :updated_at
json.url user_url(user, format: :json)
