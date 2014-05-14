#!/usr/bin/ruby
# @Author: stephenstanwood
# @Date:   2014-05-14 09:04:23
# @Last Modified by:   stephenstanwood
# @Last Modified time: 2014-05-14 09:32:20

COINS = [ :quarters, :dimes, :nickels, :pennies ]
COIN_VALUES = { quarters: 25, dimes: 10, nickels: 5, pennies: 1 }

# Makes change with the fewest number of coins for a specified # of cents
def makechange(cents)
  change = { quarters: 0, dimes: 0, nickels: 0, pennies: 0 }

  COINS.each do |coin|
    num = cents / COIN_VALUES[coin]
    change[coin] += num if num > 0
    cents -= (COIN_VALUES[coin] * num)
  end

  return change
end
