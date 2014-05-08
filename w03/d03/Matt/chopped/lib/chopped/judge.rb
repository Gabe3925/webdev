class Judge < ActiveRecord::Base
  has_many :scores

  validates :name,
    presence: true

end
