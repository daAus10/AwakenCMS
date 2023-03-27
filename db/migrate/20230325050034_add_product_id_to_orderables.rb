class AddProductIdToOrderables < ActiveRecord::Migration[7.0]
  def change
    add_reference :orderables, :product, null: false, foreign_key: true
  end
end
