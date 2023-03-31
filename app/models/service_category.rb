class ServiceCategory < ApplicationRecord
  has_one_attached :image
  has_many :service_items, dependent: :destroy
end
