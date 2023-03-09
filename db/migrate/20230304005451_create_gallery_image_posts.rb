class CreateGalleryImagePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :gallery_image_posts do |t|

      t.timestamps
    end
  end
end
