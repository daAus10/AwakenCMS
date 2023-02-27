json.extract! navbar_view, :id, :image, :brand_name, :link_name1, :link_name2, :link_name3, :link_name4, :services_link, :gallery_link, :created_at, :updated_at
json.url navbar_view_url(navbar_view, format: :json)
json.image url_for(navbar_view.image)
