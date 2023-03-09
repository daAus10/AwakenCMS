class CreateServiceViewCards < ActiveRecord::Migration[7.0]
  def change
    create_table :service_view_cards do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
