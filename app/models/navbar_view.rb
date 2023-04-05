class NavbarView < ApplicationRecord
  has_one_attached :image, dependent: :detach
end
