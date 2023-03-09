class ServiceCategory < ApplicationRecord
  has_one_attached :image
  # has_many :service_items
  # # has_many :service_items, dependent: :destroy
  # belongs_to :service_view_card
end
