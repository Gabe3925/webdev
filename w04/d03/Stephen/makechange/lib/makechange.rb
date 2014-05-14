#!/usr/bin/ruby
# @Author: stephenstanwood
# @Date:   2014-05-14 09:04:23
# @Last Modified by:   stephenstanwood
# @Last Modified time: 2014-05-14 09:11:42

#

def makechange(cents)
  coins = { quarters: 0, dimes: 0, nickels: 0, pennies: 0 }

  while cents / 25 > 0
    coins[:quarters] += 1
    cents -= 25
  end

  while cents / 10 > 0
    coins[:dimes] += 1
    cents -= 10
  end

  while cents / 5 > 0
    coins[:nickels] += 1
    cents -= 5
  end

  coins[:pennies] += cents
  return coins
end
