# Iterate through the numbers 1 to 1000
# For each one, print the output according to the rules of Super Fizz Buzz

class SuperFizzBuzz

  attr_reader :aggregator_array

  def initialize
  end

  def output(number)
    if number % 3 == 0 && number % 5 == 0 && number % 7 == 0
      return 'SuperFizzBuzz'
    elsif number % 3 == 0 && number % 7 == 0
      return 'SuperFizz'
    elsif number % 5 == 0 && number % 7 == 0
      return 'SuperBuzz'
    elsif number % 3 == 0 && number % 5 == 0
      return "FizzBuzz"
    elsif number % 3 == 0
      return "Fizz"
    elsif number % 5 == 0
      return "Buzz"
    elsif number % 7 == 0
      return "Super"
    else
      return number.to_s
    end
  end


  def output_range(start_num,end_num)
    array = (start_num..end_num)
    aggregator_array = []

    array.each do |number|
      if number % 3 == 0 && number % 5 == 0 && number % 7 == 0
        aggregator_array << 'SuperFizzBuzz'
      elsif number % 3 == 0 && number % 7 == 0
        aggregator_array << 'SuperFizz'
      elsif number % 5 == 0 && number % 7 == 0
        aggregator_array << 'SuperBuzz'
      elsif number % 3 == 0 && number % 5 == 0
        aggregator_array << "FizzBuzz"
      elsif number % 3 == 0
        aggregator_array << "Fizz"
      elsif number % 5 == 0
        aggregator_array << "Buzz"
      elsif number % 7 == 0
        aggregator_array << "Super"
      else
        aggregator_array << number.to_s
      end
    end
    aggregator_array
  end

end
