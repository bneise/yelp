class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :review_id
      t.integer :ownership_id
      t.text :content

      t.timestamps

    end
  end
end
