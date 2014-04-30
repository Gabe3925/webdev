class Calculator

	def add(num1, num2)
		return num1+num2
	end

	def subtract(num1, num2)
		return num1-num2
	end

	def power(num1, num2)
		return num1**num2
	end

	def sum(array)
			array.reduce(0, :+)
	end

	def multiply(array)
		array.reduce(:*)
	end

	def factorial(num1)
		return 1 if num1 < 2
    	return num1 * factorial(num1 - 1)
	end



end