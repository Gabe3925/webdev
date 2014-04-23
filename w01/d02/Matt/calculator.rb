# method to perform calculations

def calc(a, b)
  puts "#{a} + #{b} ="
  add = a.to_i + b.to_i
  puts add

  puts "#{a} - #{b} ="
  sub = a.to_i - b.to_i
  puts sub

  puts "#{a} * #{b} ="
  times = a.to_i * b.to_i
  puts times

  puts "#{a} / #{b} ="
  div = a.to_i / b.to_i
  puts div

  puts "sqrt(#{a}) ="
  exp = Math.sqrt(a.to_i)
  puts exp

  puts "#{a} ** #{b} ="
  div = a.to_i ** b.to_i
  puts div
end

calc1 = calc("64", "2") # test method
puts calc1 # should show the right math

