class CreateOrderables < ActiveRecord::Migration[7.0]
  def change
    create_table :orderables do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
