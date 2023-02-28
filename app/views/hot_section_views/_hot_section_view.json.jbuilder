json.extract! hot_section_view, :id, :image, :title, :description, :isVisible, :link, :created_at, :updated_at
json.url hot_section_view_url(hot_section_view, format: :json)
json.image url_for(hot_section_view.image)
