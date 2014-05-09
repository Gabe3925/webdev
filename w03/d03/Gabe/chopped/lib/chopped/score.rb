class Score < ActiveRecord::Base
 validates_presence_of :id
 validates_presence_of :dish_score
 validates_numericality_of :dish_score, only_integer: true
 belongs_to :dish
 belongs_to :judge
 belongs_to :chef
end
