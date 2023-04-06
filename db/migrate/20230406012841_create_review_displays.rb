class CreateReviewDisplays < ActiveRecord::Migration[7.0]
  def change
    create_table :review_displays do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
