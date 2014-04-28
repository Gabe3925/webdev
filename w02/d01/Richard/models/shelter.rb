# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)

class Shelter
  attr_accessor :shelter_nam, :animals_in_shelter, :clients_of_shelter

  def initialize
    @shelter_name = shelter_name
    @animals_in_shelter = []
    @clients_of_shelter = []
  end

  def display_clients
    return "Here is a list of our clients"
    return clients_of_shelter.each {|client| puts client}
  end

  def display_animals
    return "Here are all of our pets in-house:"
    return animals_in_shelter.each {|animal| puts animal}
  end

  def adoption(client, adopted_pet)
    # adoption method here
    # return client << adopted_pet
    # landlords_apts[index_of_which_apt_to_add_to].add_tenant
  end

  def return_pet(client, returned_pet)
    # return method here
  end

end
