

def gets_input(prompt)
  puts prompt
  answer = gets.chomp
  return answer
end

class Shelter

  attr_accessor :name
  attr_accessor :animals
  attr_accessor :clients

  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  def add_animal(animal)
    @animals.push(animal)
  end

  def add_client(client)
    @clients.push(client)
  end

  def disp_animals
    @animals.each do |animal|
      puts "#{animal.name} the #{animal.species}"
    end
  end

  def disp_clients
    @clients.each do |client|
      puts client.name
    end
  end

  def adopt
    count = 0
    @animals.each do |animal|
      puts "Press #{count} for #{animal.name} the #{animal.species}"
      count += 1
    end
    animal_index = gets.to_i
    puts @animials[animal_index].name
    binding.pry

  end

  def return
  end

end
