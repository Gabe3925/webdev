require 'spec_helper'

describe Score do
  it { should validate_presence_of(:id) }
  it { should validate_presence_of(:dish_score) }
  it { should validate_numericality_of(:dish_score).only_integer }
end
