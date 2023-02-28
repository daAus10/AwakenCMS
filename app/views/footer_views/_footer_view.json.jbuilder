json.extract! footer_view, :id, :brand_name, :brand_image, :group_title, :social_image_1, :social_image_2, :social_image_3, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :created_at, :updated_at
json.url footer_view_url(footer_view, format: :json)
json.brand_image url_for(footer_view.brand_image)
json.social_image_1 url_for(footer_view.social_image_1)
json.social_image_2 url_for(footer_view.social_image_2)
json.social_image_3 url_for(footer_view.social_image_3)
