class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :phone
      t.date :date
      t.string :email
      t.text :special_needs
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
