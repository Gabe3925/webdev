require_relative '../lib/sku'

describe Sku do
  let (:sku) { Sku.new("1", "Coke", 1.50, 2) }

  describe "::new" do
    it "should set the provided product code." do
      expect( sku.code ).to eq "1"
    end
   end

   describe "::new" do
    it "should set the provided product name." do
      expect( sku.product ).to eq "Coke"
    end
   end

   describe "::new" do
    it "should set the provided product price." do
      expect( sku.price ).to eq 1.50
    end
   end

   describe "::new" do
    it "should set the provided product quantity." do
      expect( sku.quantity ).to eq 2
    end
   end

   describe "#purchase" do
    it "should lower the product quantity by 1." do
    	sku.purchase
      expect( sku.quantity ).to eq 1
    end
   end

  
end