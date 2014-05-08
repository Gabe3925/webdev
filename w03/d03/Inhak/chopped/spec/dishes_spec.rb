require 'spec_helper'

describe Dish do
  it {should validate_presence_of(:name)}
  it {should validate_associate(:chef)}
  it {should validate_associate(:round)}
  it {should validate_associate(:scores)}
end
