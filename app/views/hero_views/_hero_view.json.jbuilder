json.extract! hero_view, :id, :image, :title, :description, :button, :isVisible, :created_at, :updated_at
json.url hero_view_url(hero_view, format: :json)
json.image url_for(hero_view.image)
