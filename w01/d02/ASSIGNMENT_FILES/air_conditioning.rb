puts "What is the current temperature?"
temperature = gets.to_i
puts "Is the AC currently working?"
ac_working = gets.chomp.downcase
puts "What temperatrue do you wish it was?"
ideal_temperature = gets.to_i 

if ac_working == "yes" && temperatrue > ideal_temperature
	puts "Turn on the AC please!"
elsif ac_working == "no" && temperatrue > ideal_temperature
	puts "Fix the AC! I am really hot!"
elsif ac_working == "no"
	puts "Fix the ac whenevs. It\'s cool"
else 
	puts "It is really chilly. Maybe we should light a fire"
end

