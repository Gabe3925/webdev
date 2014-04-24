shows = ["Girls", "Silicon Valley", "AD", "Battlestar"]

count = 0 
while count < shows.length 
	puts "I <3 #{shows[count].upcase}"
	count = count + 1
end

def loop_and_print(array, prepend_string, uppercase)
	i = 0
	while i < array.length
		yield array[i]
		i += 1
	end
end
 
# do |show|
# 	puts "I <3 #{show}"

loop_and_print(shows) do |show|
	puts "I <3# {show}"	
end
