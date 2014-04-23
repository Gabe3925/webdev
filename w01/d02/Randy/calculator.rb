def adding(num1, num2)
	return num1 + num2
end

def subtracting(num1, num2)
	return num1 - num2
end

def multiply(num1, num2)
	return num1 * num2
end

def square(num1)
	squared = Math.sqrt(num1)
	puts "The square root of #{num1} is #{squared}"
end

def exponation(num1, num2)
	return num1**num2
end

operation = ""

while operation != "quit"

	puts "What kind of operation would you like to perform:"
	puts "+, -, *, /, 'square', 'exponents' or type 'quit' to exit."
	operation = gets.chomp!

	if operation != "quit"
		puts "What the first number you would like to use"
		num1 = gets.to_i
			if operation != "square"
				puts "What is your second number?"
				num2 = gets.to_i
			end

		case operation
		when "+"
			puts "Your total is #{adding(num1, num2)}"
		when "-"
			puts "Your total is #{subtracting(num1, num2)}"
		when "*"
			puts "Your total is #{multiply(num1, num2)}"
		when "/"
			total = num1 / num2
			remainder = num1 % num2
			puts "#{num1} divided by #{num2} equals #{total}"
			if remainder != 0
				puts "with a remainder of #{remainder}"
			end
		when "square"
			square(num1)
		when "exponents"
			puts "#{num1} raise to #{num2} equals #{exponation(num1, num2)}"
		end
	end
end

puts "Adios amigo!!"