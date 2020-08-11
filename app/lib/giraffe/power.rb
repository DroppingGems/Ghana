
def power(base_num, power_num)
  result = 1
  power_num.times do
    result = result * base_num
  end
  return result
end

puts power(5 , 2)