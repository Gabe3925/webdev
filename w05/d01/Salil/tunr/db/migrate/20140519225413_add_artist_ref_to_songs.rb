class AddArtistRefToSongs < ActiveRecord::Migration
  def change
    add_reference :songs, :artist, index: true
  end
end
