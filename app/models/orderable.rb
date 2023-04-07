# app/models/orderable.rb
class Orderable < ApplicationRecord
  belongs_to :appointment, optional: true
  belongs_to :product
  belongs_to :kart


  # def total
  #   product.price * quantity
  # end
  # This method checks if the specified product is already in the cart.
  def product_in_cart?(product_id)
    @kart.orederables.any? { |orederable| orederable.product_id == product_id }
  end

end
