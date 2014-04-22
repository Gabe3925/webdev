calculation = "holder"
while calculation != "quit"
puts "Please select the operation you wish to perform:"
puts "Please choose from +, -, *, and / or enter \"quit\" to quit."
calculation = gets.chomp.downcase
	if calculation == "+"
		puts "Please enter your first number"
		num1 = gets.to_i
		puts "Please enter the second number"
		num2 = gets.to_i
		total_add = num1+num2
		puts "Your answer is #{total_add}\n"
	elsif calculation == "-"
		puts "Please enter your first number"
		num1 = gets.to_i
		puts "Please enter the second number"
		num2 = gets.to_i
		total_sub = num1-num2
		puts "Your answer is #{total_sub}\n"
	elsif calculation == "*"
		puts "Please enter your first number"
		num1 = gets.to_i
		puts "Please enter the second number"
		num2 = gets.to_i
		total_multi = num1*num2
		puts "Your answer is #{total_multi}\n"
	elsif calculation == "/"
		puts "Please enter your first number"
		num1 = gets.to_i
		puts "Please enter the second number"
		num2 = gets.to_i
		total_div = num1/num2
		remainder = num1%num2
		puts "Your answer is #{total_div}"
		if remainder != 0
			puts "with a remainder of #{remainder}"
		end

	end
end
puts "Goodbye"


		
		