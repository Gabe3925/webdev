require 'spec_helper'

describe Dish do

   it { should validate_presence_of(:name) }
   it { should have_many(:scores) }
   it { should belong_to(:chef) }
   it { should belong_to(:round) }
end
