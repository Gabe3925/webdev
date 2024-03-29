class Band < ActiveRecord::Base
  has_many :events
  has_many :venues, through: :events

  validates :name, presence: true
  validates :genre, presence: true
end
