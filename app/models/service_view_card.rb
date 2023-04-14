class ServiceViewCard < ApplicationRecord
  has_many :products
  has_many :orderables
  has_many :karts , through: :orderables
end
