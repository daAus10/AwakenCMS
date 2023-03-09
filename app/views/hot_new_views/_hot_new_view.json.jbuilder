json.extract! hot_new_view, :id, :image, :title, :description, :isVisible, :link, :created_at, :updated_at
json.url hot_new_view_url(hot_new_view, format: :json)
json.image url_for(hot_new_view.image)
