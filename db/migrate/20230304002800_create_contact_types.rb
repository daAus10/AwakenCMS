class CreateContactTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_types do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
