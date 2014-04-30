require 'spec_helper'
require_relative '../lib/water_bottle'

describe WaterBottle do

  describe "::new" do
    it "starts empty when it is created" do
      bottle = WaterBottle.new
      expect( bottle.empty? ).to be_true
    end

    it "starts with three sips when it is created" do
      bottle = WaterBottle.new
      expect( bottle.sips? ).to eq(0)
    end
  end

  describe "#fill!" do
    it "can be filled up with water" do
      bottle = WaterBottle.new
      bottle.fill!
      expect( bottle.empty? ).to be_false
    end

    it "has three sips after being filled" do
      bottle = WaterBottle.new
      bottle.fill!
      expect( bottle.sips? ).to eq(3)
    end
  end

  describe "#dispense" do
    it "can dispense water" do
    bottle = WaterBottle.new
    bottle.fill!
    bottle.dispense!
    expect( bottle.empty? ).to be_true
  end

  it "removes one sip from the bottle" do
    bottle = WaterBottle.new
    bottle.fill!
    bottle.dispense!
    expect( bottle.sips? ).to eq(2)
  end

  it "doesn't dispense if the bottle is empty" do
    bottle = WaterBottle.new
    bottle.dispense!
    expect( bottle.dispense! ).to eq("Water bottle is empty. Can't dispense.")
  end
end
end
