class CreateHeroViews < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_views do |t|
      t.string :title
      t.text :description
      t.string :button

      t.timestamps
    end
  end
end
