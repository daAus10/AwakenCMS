class AddEmployeeIdToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :employee, foreign_key: true, null: true
  end
end
