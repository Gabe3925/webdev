class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.float :lat
      t.float :long
    end
  end
end
