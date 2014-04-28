require "pry"


# creates arrays into which we will push all pets and clients
all_pets = []
all_clients = []


######## FIRST, A FEW USEFUL METHODS ###################################

#=====TWO METHODS, FOR ADDING NEW PETS OR CLIENTS

def add_pet(added_pet_info)
    
      name   		= get_answer_to("What's the pets name?")
      species   	= get_answer_to("What's the pets species?")
      toys 			= get_answer_to("How many toys does it have?")
      new_pet = Pet.new(name, species)
        added_pet_info << new_pet #puts new pet into Shelter's array, 'pets'----
      puts "#{new_pet.name} has been added to shelter."
    
  end


  def add_client(added_client_info)
    
      name   = get_answer_to("What's the new client's name?")
      age    = get_answer_to("How old is this client?")
      
      new_client = Client.new(name, age)
        added_client_info << new_client
      puts "#{new_client.name} has joined the shelter, looking for pets."
    
  end



#====QUESTION-ASKER METHOD==============

def get_answer_to(question)
  puts question
  answer = gets.chomp
  return answer
end


#=======method to list all pets ===

def list_pets(pets)
  pets.each_with_index do |pet, index|
    puts "#{index + 1}) #{pet.name}."
  end
  # returning nil so we don't get annoying terminal output of entire array
  # after printing all the addresses
  #return nil
end

#=======method to list all CLIENTS ===

def list_clients(clients)
  clients.each_with_index do |client, index|
   
    puts "#{index + 1}) #{client.name}."
  end
  # returning nil so we don't get annoying terminal output of entire array
  # after printing all the addresses
  #return nil
end

#=========SHELTER CLASS====================
class Shelter
  def initialize(name)
    @name      = name
    @pets      = []
    @clients   = []
  end


  
  def print_pets
    pet.each do |pet|
      puts pet.name
    end
  end


  def print_clients
    client.each do |client|
      puts client.name
    end
  end

  def add_pet
    
      name   = get_answer_to("What's the pets name?")
      species    = get_answer_to("What's the pets species?")
      toys = get_answer_to("does it have any toys?")
      pet = Pet.new(name, species)
        all_pets << pet #puts new pet into Shelter's array, 'pets'----
      puts "#{pet.name} has been added to shelter #{shelter.name}."
    
  end

  def add_client
    
      name   = get_answer_to("What's the new client's name?")
      age    = get_answer_to("How old is this client?")
      
      client = Client.new(name, age)
        all_clients << client
      puts "#{client.name} has joined the #{shelter.name} shelter, looking for pets."
    
  end

  def clients
    @clients
  end

  def pets
    @pets
  end


  def name
    return @name
  end

  def name=(name)
    @name = name
  end

end














#=====CLIENT CLASS========================

class Client
  def initialize(name, age)
    @name      = name
    @age 	   = age
    @pets      = []
  end

  def print_details
    if has_pet?
      puts "#{client.first.name} has a pet #{animal.first.speciese} named #{animal.first.name}."
    else
      puts "The client named #{client.first.name} is #{client.first.age} years old."
    end
  end

  #
  def prints_client_names
    clients.each do |client|
      puts client.name
    end
  end

  def add_pet
    if pets.size < 2
       pets << pet
      puts "#{client.name} has adopted #{pet.name}."
    else
      puts "Our clients can only adopt two pets each."
    end
  end

  def pets
    @pets
  end

  def name
    return @name
  end

  def name=(name)
    @name = name
  end

  def age
    return @age
  end

  def age=(age)
    @age = age
  end
end

#=====PET CLASS========================

class Pet
  def initialize(name, species)
    @name      = name
    @species      = []
    @toys	   = []
  end

  
  def prints_pet_names
    pets.each do |pet|
      puts pet.name
    end
  end

  def add_toy
       pet << toy
  end

  def pets
    @pets
  end

  def name
    return @name
  end

  def name=(name)
    @name = name
  end

  def species
    return @species
  end

  def species=(species)
    @species = species
  end

end

#
#=========TEST DATA===================
shelter_1 = Shelter.new("Friskees Shelter of God")
client_1 = Client.new("Joe Blow", 27)
pet_1 = Pet.new("Poppy", "Dog")

all_pets << pet_1   #unknown if this is needed
all_clients << client_1




#==========MENU==========

def list_options
  puts ""
  puts "Enter the NUMBER from the list of actions below:"
  puts ""
  puts "1. Display Pets"
  puts "2. Display Clients"
  puts "3. Add a client"
  puts "4. Add a pet"
  puts "5. Move a pet to client"
  puts "6. Take a pet from a client"
  puts "7 Quit"
  puts ""
end

answer = "please choose from menu;"

while answer != '7'
  list_options
  answer = gets.chomp
  case answer
  when '1'
    list_pets(all_pets)
  
  when '2'
    list_clients(all_clients)



  when '3'
 	puts "add a client..."
   add_client(all_clients)
  
  when '4'
  	puts "add a pet..."
  	  add_pet(all_pets)
  
  when '5'
  	puts "Add a pet to a client:"
    puts "Which pet would you like to move to a client (Choose a number.)"
    list_pets(all_pets)
    index_of_which_pet_to_move = gets.chomp.to_i - 1
    puts "Which client wants to adopt this pet?(Choose a number.)"
    list_clients(all_clients)
    index_of_which_client_is_adopting = gets.chomp.to_i - 1
    all_clients[index_of_which_client_is_adopting] << all_pets[index_of_which_pet_to_move]


when '6'
	puts "Remove a pet from a client:"
    puts "Which client wants to give back their pet? (Choose a number.)"
    list_clients(all_clients)
    index_of_which_client_giving_back = gets.chomp.to_i - 1
    puts "Which pet are they giving back?(Choose a number.)"
    all_clients[index_of_which_client_giving_back].pets
    index_of_which_pet_is_getting_returned = gets.chomp.to_i - 1
    all_pets << all_clients[index_of_which_client_giving_back][index_of_which_pet_is_getting_returned]
 
  else
  puts "bad input."
  end



end


