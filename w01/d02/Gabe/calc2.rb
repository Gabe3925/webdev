puts "CALC II"
puts "by Gabe Snyder"
puts "---------------------"
#sleep 1
puts ""



continue = "y"

while continue == "y"

puts "---------------menu-------------------"
puts "  operation              code :       "
puts "                                      "
puts "   add  . . . . . . . . . a           "
puts "   subtract  . . . . . . .s           "
puts "   divide  . . . . . . . .d           "
puts "   multiply  . . . . . . .m           "
puts "   exponent . . . . . . . x           "
puts "   square root  . . . . . q           "
puts "   sin  . . . . . . . . . n           "
puts "   cos  . . . . . . . . . c           "
puts "   tan  . . . . . . . . . t           "
puts "   factorial  . . . . . . k           "
puts "                                      "
puts "--------------------------------------"

	puts "please enter an operation you'd like to try:"
	operation = gets.chomp
	puts "integer 1:"
	int1 = gets.chomp.to_f
	puts "integer 2:"
	int2 = gets.chomp.to_f
	
if operation == "a"
	newnum = int1 + int2
	puts " #{int1} + #{int2} = #{newnum} "
	puts "another calculation? y / n "
	continue = gets.chomp.downcase
	end

if operation == "s"
	newnum = int1 - int2
	puts " #{int1} - #{int2} = #{newnum} "
	puts "another calculation? y / n "
	continue = gets.chomp.downcase
	end

if operation == "m"
	newnum = int1 * int2
	puts " #{int1} x #{int2} = #{newnum} "
	puts "another calculation? y / n "
	continue = gets.chomp.downcase
	end

if operation == "d"
	newnum = int1 / int2
	puts " #{int1} / #{int2} = #{newnum} "
	puts "another calculation? y / n "
	continue = gets.chomp.downcase
	end

end

while operaion == "d" && continue == "y"
	
	newnum = int1 / int2
	puts " #{int1} / #{int2} = #{newnum} "
	puts "another calculation? y / n "
	continue = gets.chomp.downcase
end

while operaion == "m" && continue == "y"
	
	newnum = int1 * int2
	puts " #{int1} * #{int2} = #{newnum} "
	puts "another calculation? y / n "
	continue = gets.chomp.downcase
end




