#HappiTails seed data

$shelter_01 = Shelter.new("Happi Tails")

animal01 = Animal.new("Lucy", "dog")
animal02 = Animal.new("Petey", "cat")
animal03 = Animal.new("Roger", "rabbit")
animal04 = Animal.new("Polly", "bird")
$shelter_01.animals.push(animal01.print_animal, animal02.print_animal, animal03.print_animal, animal04.print_animal)

client01 = Client.new("Mary", "25")
client02 = Client.new("Sarah", "37")
client03 = Client.new("Johnny", "67")
client04 = Client.new("Matilda", "18")
$shelter_01.clients.push(client01.print_client, client02.print_client, client03.print_client, client04.print_client)
