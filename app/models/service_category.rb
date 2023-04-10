class ServiceCategory < ApplicationRecord
  has_one_attached :image, dependent: :detach
  has_many :service_items, dependent: :destroy
end
