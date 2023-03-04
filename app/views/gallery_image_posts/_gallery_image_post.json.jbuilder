json.extract! gallery_image_post, :id, :image, :created_at, :updated_at
json.url gallery_image_post_url(gallery_image_post, format: :json)
json.image url_for(gallery_image_post.image)
