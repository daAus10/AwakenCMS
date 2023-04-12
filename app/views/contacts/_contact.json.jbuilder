json.extract! contact, :id, :email, :number, :image, :created_at, :updated_at
json.url contact_url(contact, format: :json)
json.image url_for(contact.image)
