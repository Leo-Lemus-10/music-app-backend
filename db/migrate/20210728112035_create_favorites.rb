class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :artist_id
      t.string :img
      t.string :artist_name

      t.timestamps
    end
  end
end
