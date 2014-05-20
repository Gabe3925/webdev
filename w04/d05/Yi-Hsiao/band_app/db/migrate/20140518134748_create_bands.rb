class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.boolean :has_explicit_lyrics
      t.text :video_embed_url
      t.timestamps
    end
  end
end
