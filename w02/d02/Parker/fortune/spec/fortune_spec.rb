require_relative "../lib/fortune"

	describe FortuneCookie do
		it "starts wrapped" do
		expect( fortune.wrapped? ).to be_true
	end
end

describe "#unwrap!" do 

	it "unwraps the fortune cookie" do
		fortune = FortuneCookie.new
		fortune.unwrap!
		expect(fortune.wrapped?).to be_false
	end

	describe "#crack!" do
		it "cracks it open if the cookie is unwrapped"
		fortune = FortuneCookie.new
		fortune.unwrap!
		fortune.crack!
		expect ( fortune.cracked? ).to be_true
	end

	it "does not crack if the cookie is still wrapped" do
		fortune = FortuneCookie.new
		fortune.crack!
		expect ( fortune.cracked? ).to be_false
	end

end

	

