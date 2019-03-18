class ChangeArtistAndGenreDataTypeToSongs < ActiveRecord::Migration[5.0]
  def change
    change_column :songs, :artist, :integer
    change_column :songs, :genre, :integer
    rename_column :songs, :artist, :artist_id
    rename_column :songs, :genre, :genre_id
  end
end
