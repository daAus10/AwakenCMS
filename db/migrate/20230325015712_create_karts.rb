class CreateKarts < ActiveRecord::Migration[7.0]
  def change
    create_table :karts do |t|

      t.timestamps
    end
  end
end
