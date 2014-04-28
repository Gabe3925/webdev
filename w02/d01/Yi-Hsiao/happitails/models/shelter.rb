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

  def adopt_pet
    # assigns a pet to a client and removes the pet from the shelter

    if @animals.length > 0
      client_user_options = (1..@clients.length).to_a
      avail_client_list = @clients.each_with_index.map { |client, idx| "#{idx + 1}. #{client}" }
      client_choice = get_valid_answer("Who wants to adopt an animal?\n#{avail_client_list.join("\n")}", client_user_options)
      adopting_client = @clients[client_choice - 1]

      pet_user_options = (1..@animals.length).to_a
      avail_pet_list = @animals.each_with_index.map { |pet, idx| "#{idx + 1}. #{pet}" }
      client_choice = get_valid_answer("Which animal does #{adopting_client} want to adopt?\n#{avail_pet_list.join("\n")}", pet_user_options)
      adopted_pet = @animals[client_choice - 1]

      # check to see if the client can accept the pet before removing it from the shelter
      @animals.delete(adopted_pet) if adopting_client.add_pet(adopted_pet)
    else
      puts "There are no available pets at this time."
    end
  end

  def return_pet
    # returns pets and adds the pet back to the shelter

    # only clients with pets can return pets
    clients_w_pets = @clients.select { |client| client.pets.length > 0 }

    if clients_w_pets.length > 0
      client_user_options = (1..clients_w_pets.length).to_a
      avail_client_list = clients_w_pets.each_with_index.map { |client, idx| "#{idx + 1}. #{client}" }
      client_choice = get_valid_answer("Who wants to return an animal?\n#{avail_client_list.join("\n")}", client_user_options)
      returning_client = clients_w_pets[client_choice - 1]

      clients_pets = returning_client.pets
      pet_user_options = (1..clients_pets.length).to_a
      avail_pets = clients_pets.each_with_index.map { |pet, idx| "#{idx + 1}. #{pet}" }
      client_choice = get_valid_answer("Which animal does #{returning_client} want to return?\n#{avail_pets.join("\n")}", pet_user_options)
      returned_pet = clients_pets[client_choice - 1]

      @animals.push(returned_pet) if returning_client.remove_pet(returned_pet)
    else
      puts "There are no clients with pets at this time."
    end
  end
end
