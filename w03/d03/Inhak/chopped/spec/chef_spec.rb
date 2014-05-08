require 'spec_helper'

describe Chef do
  it{should validate_presence_of(:name)}
  it{should validate_presence_of(:age)}
  it{should validate_presence_of(:gender)}
  it{should validate_associate(:episodes)}
  it{should validate_associate(:dishes)}
end
