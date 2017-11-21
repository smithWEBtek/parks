class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :park_id
      t.string :name
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
