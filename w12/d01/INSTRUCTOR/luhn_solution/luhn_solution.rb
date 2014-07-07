
def valid(cc_num)
  cc_num_as_string = cc_num.to_s
  array_housing = cc_num_as_string.split('')
  index = -2
  while(array_housing[index])
    array_housing[index] = (cc_num_as_string[index].to_i * 2)
    index -= 2
  end

  new_string = array_housing.map(&:to_s).join('')

  sum = new_string.split('').map(&:to_i).reduce(:+)
  sum % 10 === 0
end


