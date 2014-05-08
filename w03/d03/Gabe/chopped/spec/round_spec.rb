require 'spec_helper'

describe Round do
  it { should validate_presence_of(:id) }
  it { should validate_presence_of(:round_name) }
end
