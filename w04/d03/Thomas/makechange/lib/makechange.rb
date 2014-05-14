
  def make_change(cents)
    change = ""
    quarter = change + " quarter" * (cents / 25)
    change = change + " dime" * (cents % 25/10)
    change = change + " nickel" * (cents % 10/5)
    change = change + " penny" * (cents % 5/1)
    return quarter
  end

puts make_change(25)
