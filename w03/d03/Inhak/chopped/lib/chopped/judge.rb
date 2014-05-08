class Judge < ActiveRecord::Base
  has_many :scores
  has_many :judgements
  has_many :episodes, :through => :judgements

  validates_presence_of :name, :age, :gender
  validates_associated :scores, :judgements, :episodes
end
