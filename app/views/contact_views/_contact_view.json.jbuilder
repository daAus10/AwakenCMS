json.extract! contact_view, :id, :name, :email, :message, :created_at, :updated_at
json.url contact_view_url(contact_view, format: :json)
