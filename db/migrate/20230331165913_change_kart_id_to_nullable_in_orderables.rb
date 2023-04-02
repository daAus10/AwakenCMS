class ChangeKartIdToNullableInOrderables < ActiveRecord::Migration[7.0]
  def change
    change_column_null :orderables, :kart_id, true
  end
end
