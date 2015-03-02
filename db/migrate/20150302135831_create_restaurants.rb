class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.references :city
      t.string :address
      t.string :image_url
      t.integer :average_rating
      t.timestamps
    end
  end
end
