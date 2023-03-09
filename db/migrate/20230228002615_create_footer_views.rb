class CreateFooterViews < ActiveRecord::Migration[7.0]
  def change
    create_table :footer_views do |t|
      t.string :brand_name
      t.string :group_title
      t.text :monday
      t.text :tuesday
      t.text :wednesday
      t.text :thursday
      t.text :friday
      t.text :saturday
      t.text :sunday

      t.timestamps
    end
  end
end
