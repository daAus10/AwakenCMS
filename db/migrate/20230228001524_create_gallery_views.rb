class CreateGalleryViews < ActiveRecord::Migration[7.0]
  def change
    create_table :gallery_views do |t|
      t.string :title
      t.text :description
      t.string :external_link

      t.timestamps
    end
  end
end
