class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :name
      t.text :description
      t.integer :likes
    end
  end
end
