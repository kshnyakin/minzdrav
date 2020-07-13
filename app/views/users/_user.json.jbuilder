json.extract! user, :id, :surname, :name, :patrynomic, :position_id, :empl_date, :phone, :email, :login, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
