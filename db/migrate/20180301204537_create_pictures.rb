class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :caption
      t.string :image_url
      t.integer :review_id

      t.timestamps

    end
  end
end
