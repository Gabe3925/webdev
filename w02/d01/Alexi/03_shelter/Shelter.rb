require 'pry'

class Shelter
  def initialize(name)
    @name       = name
    @animals    = []
    @clients    = []
  end

  #Getter and Setter for 'name'
  def name=(name)
    @name = name
    return @name
  end

  def name
    return @name
  end

  # setter for 'animals'
  def animals
    return @animals
  end

  # setter for 'clients'
  def clients
    return @clients
  end

end
binding.pry
