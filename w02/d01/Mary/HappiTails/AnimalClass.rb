class Animal
  def initialize(name,age)
    @name = name
    @species = species
    @toys = []
  end

  def name
    return @name
  end

  def species
    return @species
  end

  def toys
    return @toys
  end

  def add_toy(toy)
    @toys.push(toy)
    return @toys
  end

end
