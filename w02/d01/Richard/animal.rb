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
  attr_reader :animal_name, :species
  attr_accessor :toys

  def initialize
    @animal_name = name
    @species = species
    @toys = []
  end

end
