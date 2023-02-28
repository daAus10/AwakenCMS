json.extract! service_category, :id, :image, :title, :description, :link, :created_at, :updated_at
json.url service_category_url(service_category, format: :json)
json.image url_for(service_category.image)
