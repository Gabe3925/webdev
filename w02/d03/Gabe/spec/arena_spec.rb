require_relative '../lib/gladiator'
require_relative '../lib/arena'

describe Arena do
  let(:arena_1) do
    Arena.new("thunderdome", [
      Gladiator.new('Bonzo', 'trident'),
      Gladiator.new('Jango', 'spear'),
      Gladiator.new('Winslo', 'club')
    ], [])
  end

  describe "::new" do
    it "All arenas should have a Capitalized name." do
      expect( arena_1.name ).to eq "Thunderdome"
    end
   end

  describe "#have_gladiator" do
    it "The arena can HAVE gladiators." do
      arena_1.have_gladiator("Gonzo", "trident")
      expect( arena_1.roster ).to be_true
    end
   end

   describe "#add_to_arena" do
    it "You can ADD a gladiator to the arena;" do
      arena_1.add_to_arena("Bonzo")
      expect( arena_1.arena ).to be_true
    end
   end

   describe "#add_to_arena" do
    it "The arena CANNOT have more than two gladiators at a time" do
      arena_1.add_to_arena("Bonzo")
      arena_1.add_to_arena("Jango")
      expect( arena_1.add_to_arena("Winslo") ).to eq "You cannot add more than two gladiators at a time!"
    end
   end

   describe "#fight" do
    it "You can call a FIGHT if there are more than two gladiators in the arena, eliminating one;" do
      arena_1.add_to_arena("Bonzo")
      arena_1.add_to_arena("Jango")
      arena_1.fight
      expect( arena_1.arena ).to eq "Bonzo" #Bonzo kills Jango
    end
   end

   describe "#fight" do
    it "You CANNOT call a FIGHT if there is only ONE gladiators in the arena, eliminating one;" do
      arena_1.add_to_arena("Bonzo")
      expect( arena_1.fight ).to eq "You need two gladiators to call a fight!" #Bonzo kills Jango
    end
   end

   describe "#fight" do
    it "You can call a FIGHT, eliminating two - spear beats club;" do
      arena_1.add_to_arena("Winslo")
      arena_1.add_to_arena("Jango")
      arena_1.fight
      expect( arena_1.arena ).to eq "Jango" #Jango kills Winslo
    end
   end

   describe "#fight" do
    it "You can call a FIGHT, eliminating two - club beats trident;" do
      arena_1.add_to_arena("Bonzo")
      arena_1.add_to_arena("Winslo")
      arena_1.fight
      expect( arena_1.arena ).to eq "Winslo" #Winslo kills Bonzo
    end
   end






end