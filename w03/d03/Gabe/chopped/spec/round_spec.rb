require 'spec_helper'

describe Round do
  it { should validate_presence_of(:id) }
  it { should validate_presence_of(:round_name) }
  it { should have_many(:judges) }
  it { should have_many(:chefs) }
end
