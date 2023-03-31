class AddKartToOrderables < ActiveRecord::Migration[7.0]
  def change
    add_reference :orderables, :kart, null: false, foreign_key: true
  end
end
