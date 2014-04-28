
class Client
 def initialize(name, age, animals)
    @name = name
    @age = age
    @animals = animals
  end

  def name
    return @name
  end

  def name=(name)
    @name = name
    return @name
  end

  def age
    return @age
  end

  def age=(age)
    @age = age
  end
end

# A client should have a name.
# A client should have an age.
# A client can have multiple pets (animals), but it doesn't start with any.
