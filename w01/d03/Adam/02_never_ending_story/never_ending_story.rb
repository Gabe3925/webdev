story = [
  'Fry is born without a delta brainwave',
  'As a result, Fry is cryogenically frozen until 2999',
  'In the future, Fry works on a spaceship',
  'The spaceship hits a wormhole and crashes in 1941 Roswell, NM',
  'Fry encounters his grandmother, then inadvertently sires his father'
]

index = 0

while true
  puts "#{story[index]}"
  puts "Should we continue? (y/n)"
  user_input = gets.chomp

  if user_input.include? 'y'
    index += 1
  else
    break
  end
  if index == story.length
    index = 0
  end
end

puts "The story ended!"



