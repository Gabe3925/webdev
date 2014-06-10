class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, :null => false
      t.string :artist, :null => false
      t.string :preview_url
      t.timestamps
    end
  end
end
