class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :location
      t.string :employment
    end
  end
end
