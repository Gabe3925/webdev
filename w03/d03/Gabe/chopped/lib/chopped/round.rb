class Round < ActiveRecord::Base
validates_presence_of :id
  validates_presence_of :round_name
  has_many :chefs
  has_many :judges

end
