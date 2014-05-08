require 'spec_helper'

describe Chef do
  let(:chef) { Chef.new }
  it { should validate_presence_of(:id) }
  it { should validate_presence_of(:chef_name) }
  it { should belong_to(:round) }
  it { should have_many(:dishes) }


end #== Ends chef class





# == sample code below here
#describe Clubber do
#  let(:clubber) { Clubber.new }
#
#it { should ensure_length_of(:name).is_at_least(2)}
#
# #context "#name validation" do
# #  it "should be invalid with fewer than two letters" do
# #    clubber.name = 'T';
# #    clubber.valid?
# #    expect( clubber.errors.has_key?(:name) ).to eq true
# #  end
#
# #  it "should be valid with two or more letters" do
# #    clubber.name = 'TJ';
# #    clubber.valid?
# #    expect( clubber.errors.has_key?(:name) ).to eq false
# #  end
##end
#
#it { should validate_numericality_of(:age).is_less_than(60) }
#it { should validate_numericality_of(:age).is_greater_than_or_equal_to(21) }
