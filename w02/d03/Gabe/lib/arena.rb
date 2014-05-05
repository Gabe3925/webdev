require 'pry'

class Arena
  attr_reader :name, :roster, :arena

  def initialize(name='', roster=[], arena=[])
    @name = name.capitalize
    @roster = roster
    @arena= arena
  end


 def have_gladiator(name, weapon) #CREATES and adds gladiator to roster
    new_to_add = Gladiator.new(name, weapon)
    @roster = new_to_add
    return "Gladiator #{new_to_add} added to arena roster."
  end


  def get_name(who) #finds gladiator in roster, and returns name, or not
    return @roster.find { |gladiator| gladiator.name == who}
  end


  def add_to_arena(which_one) #looks in roster for a name, if found, moves to arena
    if arena[1] == nil
    	arena.push(get_name(which_one))
     	return "added #{which_one} to arena."
	else 
		return "You cannot add more than two gladiators at a time!"
	end
  end



  def fight

  	#while arena[1] == true

    	battler1 = arena[0]#checks the weapons of the two battlers
    	battler2 = arena[1]
    	###################################### trident
    	if battler1.weapon  == "trident"
	
    	elsif battler2.weapon == "spear"
    		arena.pop
	
    	elsif battler2.weapon == "club"
    		arena.pull!
	
    	elsif battler2.weapon== "trident"
    		return "Its a draw!"
    		@arena = []
    	else 
    	  return "unknown weapons!"
    	end
    	###################################### spear
    	if battler1  == "spear"
	
    	elsif battler2 == "club"
    		arena.pop!
	
    	elsif battler2 == "trident"
    		arena.pull!
	
    	elsif battler2 == "spear"
    		return "Its a draw!"
    		@arena = []
    	else 
    	  return "unknown weapons!"
    	end
	
    	###################################### club
    	if battler1  == "club"
	
    	elsif battler2 == "trident"
    		arena.pop!
	
    	elsif battler2 == "spear"
    		arena.pull!
	
    	elsif battler2 == "club"
    		return "Its a draw!"
    		@arena = []
    	else 
    	  return "unknown weapons!"
    	end

   	
		#return "You need two gladiators to call a fight!"
	#end

  end # end battle method




 end # end class