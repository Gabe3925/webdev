require 'spec_helper'

describe Judge do
   it { should validate_presence_of(:id) }
  it { should validate_presence_of(:judge_name) }
  it { should have_many(:dishes).through(:scores) }
end
