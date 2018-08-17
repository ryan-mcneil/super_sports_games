ages = [24, 30, 18, 20, 41]

#Your code here for calculating the standard deviation
def standard_deviation(arr)
  avg = average(arr)
  new_arr = arr.map { |x|
    (x - avg) ** 2
  }
  return Math.sqrt(average(new_arr))
end

def average(arr)
  sum = 0
  arr.each do |x|
    sum += x
  end
  return sum.to_f/arr.length
end

#When you find the standard deviation, print it out
puts standard_deviation(ages)
