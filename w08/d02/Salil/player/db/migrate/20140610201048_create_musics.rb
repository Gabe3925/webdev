class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title
      t.string :artist
      t.text :preview_url
    end
  end
end
