class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string  :name, null: false
      t.boolean :dead, default: false
      t.index   :name, unique: true
      t.timestamps
    end
  end
end
