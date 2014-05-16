class Book < ActiveRecord::Base
  belongs_to :author
  has_many :characters

  validates :title, presence: true
end
