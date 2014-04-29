# - Client:
#   - A client should have a name.
#   - A client should have an age.
#   - A client can have multiple pets (animals), but it doesn't start with any.

class Client
  attr_accessor :pets

  def initialize(name="", age=0)
    @name = name
    @age = age
    @pets = []
  end
end
