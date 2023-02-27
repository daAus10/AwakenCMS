class CreateNavbarViews < ActiveRecord::Migration[7.0]
  def change
    create_table :navbar_views do |t|
      t.string :brand_name
      t.string :link_name1
      t.string :link_name2
      t.string :link_name3
      t.string :link_name4
      t.string :services_link
      t.string :gallery_link

      t.timestamps
    end
  end
end
