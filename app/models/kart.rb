class Kart <  ApplicationRecord
  has_many :orderables, dependent: :destroy
  has_many :products , through: :orderables




  # def total
  #   # Here quantity IS accounted for in price total
  #   # orderables.to_a.sum { |orderable| orderable.total}
  #
  #   # Here quantity is NOT accounted for in price total
  #   self.orderables.map { |orderable| orderable.product.price }.sum
  # end


  def quantity
    orderables.count
    end
end
