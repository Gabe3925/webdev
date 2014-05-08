class Round < ActiveRecord::Base
validates_presence_of :id
  validates_presence_of :round_name
  has_many :judges
  has_many :chefs
end
