class ServiceItem < ApplicationRecord
  has_many :orderables
  has_many :karts, through: :orderables
end
