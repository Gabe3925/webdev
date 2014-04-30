require_relative "../lib/water_bottle.rb"

describe WaterBottle do
  let( :water_bottle ) { WaterBottle.new }

  describe "::new" do
    it "starts empty" do
      expect( water_bottle.filled? ).to be_falsy
    end

    it "can hold 3 sips" do
      expect( water_bottle.max_capacity ).to eq(3)
    end
  end

  describe "#fill!" do
    it "fills the water bottle" do
      water_bottle.fill!
      expect( water_bottle.filled? ).to be_truthy
    end
  end

  describe "dispense" do
    context "when water bottle is empty"
    before { water_bottle.fill! }

    it "dispenses 1 sip at a time" do
      water_bottle.dispense
      expect( water_bottle.water_level ).to eq( water_bottle.max_capacity - 1 )
    end

    it "does not dispense water if it is empty" do
      4.times { water_bottle.dispense }
      expect( water_bottle.water_level ).to eq(0)
    end
  end
end
