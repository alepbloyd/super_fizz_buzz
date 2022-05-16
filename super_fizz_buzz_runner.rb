require "./lib/super_fizz_buzz"

super_fizz = SuperFizzBuzz.new

puts "Welcome to SuperFizzBuzz! Enter a number or a range..."

puts

input = gets.chomp

puts

if input.match?(/[[:alpha:]]/)
  puts "Your input needs to be a single number or in the format first_number,second_number"
elsif input.include?(",")
  input_array = input.split(",")
  if input_array[0].to_i > input_array[1].to_i
    puts "Your first number should be lower than your second number please."
  else
    puts super_fizz.output_range(input_array[0].to_i,input_array[1].to_i)
  end
else
  puts super_fizz.output(input.to_i)
end
