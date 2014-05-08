require 'spec_helper'

describe Episode do
  it{should validate_presence_of(:epi_num)}
  it{should validate_presence_of(:season)}
  it{should validate_presence_of(:air_date)}
  it{should validate_associated(:chefs, :rounds, :judgments, :judges)}
end
