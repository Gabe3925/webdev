class Chef < ActiveRecord::Base
  has_many :dishes
  belongs_to :episodes

  validates_presence_of :name, :age, :gender
  validates_associated :episodes, :dishes
end
