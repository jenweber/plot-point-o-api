class CreateSpoileryPosts < ActiveRecord::Migration
  def change
    create_table :spoilery_posts do |t|
      t.string :title
      t.string :content
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
