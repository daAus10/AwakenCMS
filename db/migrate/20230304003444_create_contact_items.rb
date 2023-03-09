class CreateContactItems < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_items do |t|
      t.string :image
      t.string :attachment
      t.string :contactType
      t.string :string
      t.string :contact

      t.timestamps
    end
  end
end
