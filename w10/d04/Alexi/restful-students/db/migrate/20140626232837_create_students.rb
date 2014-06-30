class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    t.string  "name"
    t.string  "email"
    t.string  "phone"
    t.string  "location"
    t.text  "employer"
    t.boolean "misses_wdi"
    end
  end
end
