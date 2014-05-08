class Score < ActiveRecord::Base
  belongs_to :dishes
  belongs_to :judges

  validates_associated :dishes, :judges
end
