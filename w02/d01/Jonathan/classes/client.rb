# ++++++++++++++
# Client Class
# ++++++++++++++
class Client
  def initialize(name, age)
    @name = name
    @age = age
    @animals = []
  end

# Client Getters
# ++++++++++++++
  def name
    return @name
  end

  def age
    return @age
  end

  def animals
    @animals
  end
end
