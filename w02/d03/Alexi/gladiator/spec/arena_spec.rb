require_relative '../lib/gladiators'
require_relative '../lib/arena'

describe Arena do
  let(:arena) do
    Arena.new("African") # Just passing a string, not an array.
    
  end # - END of let

  describe "::new" do
    it "should have a capitalized name" do
      expect( arena.name ).to eq( 'African' )
    end
  end # - END ::new

  describe "#add_gladiator" do
    it "should add gladiator to arena" do
      glad_array.push(Gladiator.new("maximus", "trident"))
      expect( glad_array[0] ).to eq(["maximus", "trident"])
    # Always test data, not behavior
    # Prepare data, execute on the data, inspect data
    end

  end # - END add_gladiator
end # - END Arena class


#def add_gladiator(gladiator_instancee)
#@gladiator_array << gladiator_instance

# describe "#add_gladiator" do
#     it "will add the specified gladiator to the arena." do
#       sparky = Gladiator.new("Sparky", "Club")
#       arena.add_gladiator(sparky)
#       expect(gladiators.empty?).to be(false)
#     end
#   end #Describe #add_gladiator
