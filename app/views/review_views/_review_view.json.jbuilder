json.extract! review_view, :id, :title, :content, :created_at, :updated_at
json.url review_view_url(review_view, format: :json)
