class CreateServiceItems < ActiveRecord::Migration[7.0]
  def change
    create_table :service_items do |t|
      t.string :service_name
      t.integer :time
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
