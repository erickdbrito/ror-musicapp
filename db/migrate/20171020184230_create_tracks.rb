class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :album
      t.string :artist
      t.string :genre

      t.timestamps
    end
  end
end
