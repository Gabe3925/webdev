# #HappiTails

# ###Prompt

# - You are the manager at HappiTails animal shelter. You need to manage your shelter by storing and manipulating information about clients and animals.

# ###Specification:

# #####Object Specs:
# - Animal:
#   - An animal should have a name.
#   - An animal should have a species.
#   - An animal can have multiple toys, but doesn't start with any.


class Animal
  attr_accessor :animal_name, :species, :toys

  def initialize (animal_name, species, toys)
    @animal_name = animal_name
    @species = species
    @toys = 0
  end

end
