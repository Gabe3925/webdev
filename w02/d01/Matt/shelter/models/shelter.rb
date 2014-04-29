# require_relative 'models/seeds.rb'

class Shelter
  def initialize(shelter_name)
    @shelter_name = shelter_name
    @animals = []
    @clients = []
    @family = []
  end

  #shelter_name getter
  def shelter_name
    return @shelter_name
  end

  #shelter_name setter
  def shelter_name=(shelter_name)
    @shelter_name = shelter_name
    return shelter_name
  end

  #add animal method
  def add_animal
    #get animal name
    animal_name = add_detail("What is the animal name?")
    #get animal species
    species = add_detail("What species is the animal?")
    #add toys
    toys = add_detail("Which toys does the animal have?")
    #add animal info to new_animal
    new_animal = Animal.new(animal_name, species, toys)
    #push animal into animal_array
    animals << new_animal
  end

  #add client method
  def add_client
    #get animal name
    client_name = add_detail("What is the client's name?")
    #get animal species
    age = add_detail("What age of the client?")
    #add toys
    pets = add_detail("What pets does the client have?")
    #add animal info to new_animal
    new_client = Client.new(client_name, age, pets)
    #push animal into animal_array
    clients << new_client
  end

  #show all animals
  def show_all_animals
    @animals.each do |animal|
      puts "#{animal.animal_name} the #{animal.species}"
    end
  end

  #show all clients
  def show_all_clients
    @clients.each do |client|
      puts "#{client.client_name}"
    end
    binding.pry
  end

  # #has pet?
  def has_pet?
    @clients.each do |client|
      if pets == "none"
        return true
      else
        return false
      end
    end
  end

  def give_away_pet
    @clients.each do |give_away|
      animals << client.pets
    end
  end

  # #add animal to client
  # def animal_client
  #   if has_pet? == false
  #     puts "#{show_all_animals}"
  #     put ""
  #     puts "Enter the name of the pet you want:"
  #     pet_adopt = gets.chomp
  #     if "#{pet_adopt}" == "#{animal.animal_name}"
  #       clients << animals
  #     end
  #   end
  # end

  #animal getters
  def animals
    return @animals
  end

  def animal_name
    return @animal_name
  end

  def species
    return @species
  end

  def toys
    return @toys
  end

  #client getters
  def clients
    return @clients
  end

  def client_name
    return @client_name
  end

  def age
    return @age
  end

  def pets
    return @pets
  end

  def family
    return @family
  end

end
