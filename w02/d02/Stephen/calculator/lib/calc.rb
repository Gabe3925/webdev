# Stephen Stanwood (stephen@stanwoodsolutions.com)

class Calculator
  def add(x, y)
    x + y
  end

  def subtract(x, y)
    x - y
  end

  def power(x, y)
    x ** y
  end

  def sum(arr)
    return 0 if arr.empty?
    arr.reduce(:+)
  end

  # Accepts either two numbers or an array of several & multiplies them.
  def multiply(arr)
    return arr.reduce(:*)
  end

  # Calculates the factorial of a given number
  def factorial(x)
    return nil if x < 0
    return 1 if x < 2
    x * factorial(x-1)
  end

  def gcd(x,y)
    return x.gcd(y)
  end
end
