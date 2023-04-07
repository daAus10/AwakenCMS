class Product < ApplicationRecord
  has_many :orderables
  has_many :karts , through: :orderables
  belongs_to :product_category

end
