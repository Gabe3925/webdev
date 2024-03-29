class CreateMovie < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.float :imdb_rating
      t.text :plot
      t.text :poster_url
    end
  end
end
