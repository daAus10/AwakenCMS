json.extract! about_view, :id, :title, :description, :about_link, :created_at, :updated_at
json.url about_view_url(about_view, format: :json)
