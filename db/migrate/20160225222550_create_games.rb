class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :developer
      t.string :platforms
      t.string :rating

      t.timestamps null: false
    end
  end
end
