json.extract! account, :id, :name, :usr_id, :password, :email, :dept, :created_at, :updated_at
json.url account_url(account, format: :json)
