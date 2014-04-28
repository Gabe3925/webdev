# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)

class Shelter
  attr_accessor :clients, :animals

  def initialize(name="")
    @name = name
    @animals = []
    @clients = []
  end

  def adopt_pet(pet, client)
    @animals.delete(pet) if client.add_pet(pet)
  end

  def return_pet(pet, client)
    @animals.push(pet) if client.remove_pet(pet)
  end
end
