class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :year
      t.integer :artist_id
    end
  end
end
