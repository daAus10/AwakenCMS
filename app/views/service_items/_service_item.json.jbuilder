json.extract! service_item, :id, :service_name, :time, :price, :description, :created_at, :updated_at
json.url service_item_url(service_item, format: :json)
