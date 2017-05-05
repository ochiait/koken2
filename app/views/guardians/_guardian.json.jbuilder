json.extract! guardian, :id, :name, :email, :password, :tel, :created_at, :updated_at
json.url guardian_url(guardian, format: :json)
