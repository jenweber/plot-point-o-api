class CreateNoSpoilersPosts < ActiveRecord::Migration
  def change
    create_table :no_spoilers_posts do |t|
      t.string :title
      t.string :content
      t.references :game, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
