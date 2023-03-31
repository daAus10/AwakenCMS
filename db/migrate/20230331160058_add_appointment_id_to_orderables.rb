class AddAppointmentIdToOrderables < ActiveRecord::Migration[7.0]
  def change
    add_column :orderables, :appointment_id, :integer
    add_index :orderables, :appointment_id
  end
end
