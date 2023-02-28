json.extract! gallery_view, :id, :title, :description, :external_link, :created_at, :updated_at
json.url gallery_view_url(gallery_view, format: :json)
