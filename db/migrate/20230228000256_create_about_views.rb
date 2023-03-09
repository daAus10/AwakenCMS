class CreateAboutViews < ActiveRecord::Migration[7.0]
  def change
    create_table :about_views do |t|
      t.string :title
      t.text :description
      t.string :about_link

      t.timestamps
    end
  end
end
