# - Animal:
#   - An animal should have a name.
#   - An animal should have a species.
#   - An animal can have multiple toys, but doesn't start with any.

class Animal
  def initialize(name="", species="")
    @name = name
    @name = species
    @toys = []
  end
end
