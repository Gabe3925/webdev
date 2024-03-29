class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.decimal :rating
      t.text :plot
      t.text :poster_url
      t.timestamps
    end
  end
end
