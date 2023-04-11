class GalleryView < ApplicationRecord
  has_one_attached :image, dependent: :detach
end
