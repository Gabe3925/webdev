# #- Client:
#   - A client should have a name.
#   - A client should have an age.
#   - A client can have multiple pets (animals), but it doesn't start with any.

class Client
  attr_reader :client_name, :age
  attr_accessor :pets

  def initialize
    @client_name = client_name
    @age = age
    @pets = []
  end
end
