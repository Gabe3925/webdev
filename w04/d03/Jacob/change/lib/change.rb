class Exchange
  def initialize
  end

  def make_change(cents)
    if cents != cents.to_i
      return "Error.  Please input valid cent amount."
    end
    coins_returned = {}
    number_of_quarters = coins_returned[:quarters] = (cents/25).to_i
    number_of_dimes = coins_returned[:dimes] = ((cents - number_of_quarters*25)/10).to_i
    number_of_nickels = coins_returned[:nickels] = ((cents - number_of_quarters*25 - number_of_dimes*10)/5).to_i
    number_of_pennies = coins_returned[:pennies] = ((cents - number_of_quarters*25 - number_of_dimes*10 - number_of_nickels*5)).to_i
    coins_returned
  end
end
