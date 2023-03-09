class FooterView < ApplicationRecord
  has_one_attached :brand_image
  has_one_attached :social_image_1
  has_one_attached :social_image_2
  has_one_attached :social_image_3
end
