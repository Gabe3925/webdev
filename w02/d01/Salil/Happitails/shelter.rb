

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

  def disp_clients
  end

  def disp_animals
  end

  def adopt
  end

  def return
  end

end
