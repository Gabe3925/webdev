require 'spec_helper'

describe Chef do

  it { should validate_presence_of(:name) }

  it { should validate_numericality_of(:bank) }

end
