class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.string :text

      t.timestamps
    end
  end
end
