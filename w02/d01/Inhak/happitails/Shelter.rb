require 'pry'

require_relative "Animal.rb"
require_relative "Client.rb"

class Shelter
  def initialize (name)
    @name = name
    @animals = []
    @clients = []
  end

  def add_animal(name, species)
    @animals.push(Animal.new(name, species))
  end

  def add_client(name, age)
    @clients.push(Client.new(name, age))
  end

  def return_clients
    puts "the clients are:"
    count = 1
    @clients.each do |client|
      return "(#{count}) #{client.name}"
      count += 1
    end
  end

  def return_animals
    puts "the animals are:"
    count = 1
    @animals.each do |animal|
      return "(#{count}) #{animal.name}"
      count += 1
    end
  end

  def adopt
    puts "Which client is adopting?"
    self.return_clients
    adopter = gets.chomp.to_i
    puts "Which animal is being adopted?"
    self.return_animals
    pet = gets.chomp.to_i
    @clients[adopter - 1].add_pet(@animals[pet-1])
    @animals.delete(@animals[pet-1])
  end

  def unadopt
    puts "Which client is returning their pet?"
    adopter = gets.chomp
    self.return_clients
    puts "Which animal is he returning?"
    pet = gets.chomp
    @client.remove_pet()
    @animals.push(pet)
  end
end

