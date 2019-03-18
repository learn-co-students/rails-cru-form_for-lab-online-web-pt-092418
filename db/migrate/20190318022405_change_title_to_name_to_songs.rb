class ChangeTitleToNameToSongs < ActiveRecord::Migration[5.0]
  def change
    rename_column :songs, :title, :name
  end
end
