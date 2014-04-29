require "pry"


# creates arrays into which we will push all pets and clients
#all_pets = []
#all_clients = []


######## FIRST, A FEW USEFUL METHODS ###################################

#=====TWO METHODS, FOR ADDING NEW PETS OR CLIENTS

#f add_animal(added_pet_info)
#  
#    name   		= get_answer_to("What's the pets name?")
#    species   	= get_answer_to("What's the pets species?")
#    toys 			= get_answer_to("How many toys does it have?")
#    new_pet = Pet.new(name, species)
#      added_pet_info << new_pet #puts new pet into Shelter's array, 'pets'----
#    puts "#{new_pet.name} has been added to shelter."
#  
#end


#def add_client(added_client_info)
#  
#    name   = get_answer_to("What's the new client's name?")
#    age    = get_answer_to("How old is this client?")
#    
#    new_client = Client.new(name, age)
#      added_client_info << new_client
#    puts "#{new_client.name} has joined the shelter, looking for pets."
#  
#end



#====QUESTION-ASKER METHOD==============

def get_answer_to(question)
  puts question
  answer = gets.chomp
  return answer
end






#=========SHELTER CLASS====================
class Shelter
  def initialize(name)
    @name         = name
    @animals      = []
    @clients      = []
  end



  def animals #gets pets
  	return @animals
  end



  def clients #gets clients
  	return @clients
  end



  def add_animal
      name   	 = get_answer_to("What's the animals name?")
      species    = get_answer_to("What's the animals species?")
      toys       = get_answer_to("does it have any toys?")
      new_animal = Animal.new(name, species)
        
        @pets << new_animal #puts new pet into Shelter's array, 'pets'----
      puts "#{new_animal.name} has been added to shelter #{shelter.name}."
  end


  def add_client
    
      name   	 = get_answer_to("What's the new client's name?")
      age   	 = get_answer_to("How old is this client?")
      new_client = Client.new(name, age)
        
        @clients << new_client
      puts "#{new_client.name} has joined the #{shelter.name} shelter, looking for pets."
  end


#=============2 methods for importing pre-made instances of test animals or clients


  def import_animal(animal_to_import)
    
        @animals << animal_to_import
  end
     

  def import_client(client_to_import)
      
        @clients << client_to_import
  end
      
    
  

#============method to LIST all ANIMALS in shelter

  	def list_animals
  		@animals.each_with_index do |animal, index|
    	puts "#{index + 1}) #{animal}."
  		end
 	end


      #=======method to list all CLIENTS in sheter===

	def list_clients
  		@clients.each_with_index do |client, index|
   		puts "#{index + 1}) #{client.name}."
  		end
	end




end #END SHELTER CLASS



#=====CLIENT CLASS========================

class Client
  def initialize(name, age)
    @name      = name
    @age 	   = age
    @pets      = []
  end


  def name
    return @name
  end


  def age
    return @age
  end


 def pets
    @pets
  end

  def add_pet
    if pets.size < 2
       @pets << pet
      puts "#{client.name} has adopted #{pet.name}."
    else
      puts "Our clients can only adopt two pets each."
    end
  end


  #def cat lady
    #if has_pet?
     # puts 
    #else
     # puts 
    #end
  #end

end #END CLIENT CLASS




#=====Animal CLASS========================

class Animal
  def initialize(name, species)
    @name      = name
    @species   = species
    @toys	   = []
  end

  def name
    return @name
  end



  def species
    return @species
  end
 

  def add_toy
     toys << toy
  end

end





#=========TEST DATA===================
shelter_1 = Shelter.new("Friskees Shelter of God")
client_1 = Client.new("Joe Blow", 27)
animal_1 = Animal.new("Poppy", "Dog")

shelter_1.import_animal animal_1   #unknown if this is needed
shelter_1.import_client client_1




#==========MENU==========

def list_options
  puts ""
  puts "Enter the NUMBER from the list of actions below:"
  puts ""
  puts "1. Display Animals in Shelter"
  puts "2. Display Clients of Shelter"
  puts "3. Add a Client"
  puts "4. Add an Animal"
  puts "5. Move an animal to client"
  puts "6. Take an animal from a client"
  puts "7 Quit"
  puts ""
end

answer = "please choose from menu;"

while answer != '7'
  
  list_options #uses menu above:
  answer = gets.chomp
  
  case answer
  
  when '1'
    shelter_1.list_animals
  
  when '2'
    shelter1.list_clients



  when '3'
 	puts "add a client..."
   add_client(clients)
  
  when '4'
  	puts "add a pet..."
  	  add_pets(pets)
  
  when '5'
  	puts "Add a pet to a client:"
    puts "Which pet would you like to move to a client (Choose a number.)"
    list_pets(all_pets)
    index_of_which_pet_to_move = gets.chomp.to_i - 1
    puts "Which client wants to adopt this pet?(Choose a number.)"
    list_clients(all_clients)
    index_of_which_client_is_adopting = gets.chomp.to_i - 1

    all_clients[index_of_which_client_is_adopting].push(pets[index_of_which_pet_to_move])


   when '6'
	puts "Remove a pet from a client:"
    puts "Which client wants to give back their pet? (Choose a number.)"
    list_clients(all_clients)
    index_of_which_client_giving_back = gets.chomp.to_i - 1
    puts "Which pet are they giving back?(Choose a number.)"
    all_clients[index_of_which_client_giving_back].pets
    index_of_which_pet_is_getting_returned = gets.chomp.to_i - 1
    pets << all_clients[index_of_which_client_giving_back][index_of_which_pet_is_getting_returned]
 

  when '7'
 	puts "Goodbye"
  
  else
  puts "bad input."
end



end


