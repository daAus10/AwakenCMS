json.extract! appointment, :id, :name, :phone, :date, :email, :special_needs, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
