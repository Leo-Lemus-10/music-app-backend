class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :spotify_link
      t.string :picture

      t.timestamps
    end
  end
end
