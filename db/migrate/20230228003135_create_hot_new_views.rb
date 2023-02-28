class CreateHotNewViews < ActiveRecord::Migration[7.0]
  def change
    create_table :hot_new_views do |t|
      t.string :title
      t.text :description
      t.boolean :isVisible
      t.string :link

      t.timestamps
    end
  end
end
