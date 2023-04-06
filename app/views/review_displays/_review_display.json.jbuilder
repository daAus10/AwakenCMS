json.extract! review_display, :id, :title, :description, :created_at, :updated_at
json.url review_display_url(review_display, format: :json)
