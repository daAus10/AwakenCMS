class CreateMapViews < ActiveRecord::Migration[7.0]
  def change
    create_table :map_views do |t|
      t.string :url

      t.timestamps
    end
  end
end
