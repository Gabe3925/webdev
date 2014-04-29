class Calculator

  def add(num1, num2)
    return num1 + num2
  end

  def subtract(num1, num2)
    return num1 - num2
  end

  def power(num1, num2)
    return num1 ** num2
  end

  def sum(array)
    return array.reduce(0, :+)
  end

  def multiply(*nums)
    return nums.reduce(:*)
  end

  def factorial(num)
    # if num < 2
    #   return 1
    # else
    #   return num * factorial(num - 1)
    # end
    return 1 if num < 2
    return num.downto(1).reduce(:*)
  end

end