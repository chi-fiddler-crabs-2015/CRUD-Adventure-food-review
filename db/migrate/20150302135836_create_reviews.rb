class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.references :reviewer
      t.references :restaurant
      t.timestamps
    end
  end
end
