class AddImageToGalleryViews < ActiveRecord::Migration[7.0]
  def change
    add_column :gallery_views, :image, :string
  end
end
