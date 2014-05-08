class Chef < ActiveRecord::Base
  has_many :dishes

  validates :name,
    presence: true
  validates :eliminated,
    inclusion: { in: [true, false] }
  validates :bank,
    numericality: true

end
