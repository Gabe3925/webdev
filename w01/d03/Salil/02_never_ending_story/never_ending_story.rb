story = [
  'Fry is born without a delta brainwave',
  'As a result, Fry is cryogenically frozen until 2999',
  'In the future, Fry works on a spaceship',
  'The spaceship hits a wormhole and crashes in 1941 Roswell, NM',
  'Fry encounters his grandmother, then inadvertently sires his father'
]
ans = "y"
count = 0;

while ans == "y"
  if ans == "y"
    puts story[count]
  end

  puts "Would you like to continue? (Y or N)"
  ans = gets.chomp.downcase
  break if ans == "n"

  count += 1
  if count > 4
    count = 0
  end
end

