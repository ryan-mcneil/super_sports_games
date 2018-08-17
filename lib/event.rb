class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    self.average(ages)
  end

  def standard_deviation_age
      avg = self.average_age
      new_arr = ages.map { |x|
        (x - avg) ** 2
      }
      Math.sqrt(average(new_arr)).round(2)
  end

  def average(arr)
    sum = 0
    arr.each do |x|
      sum += x
    end
    sum.to_f/arr.length
  end

end

# event = Event.new("Curling", [24, 30, 18, 20, 41])
# puts event.name
# p event.ages
# puts event.max_age
# puts event.min_age
# puts event.average_age
# puts event.standard_deviation_age
