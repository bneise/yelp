class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :neighborhood
      t.text :short_description
      t.time :hours
      t.string :website
      t.integer :total_ratings
      t.integer :num_reviews

      t.timestamps

    end
  end
end
