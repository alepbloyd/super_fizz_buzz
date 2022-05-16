require "./lib/super_fizz_buzz"

super_fizz = SuperFizzBuzz.new

puts "Welcome to SuperFizzBuzz! Enter a number or a range..."

input = gets.chomp

if input.include?(",")
  input_array = input.split(",")
  puts super_fizz.output_range(input_array[0].to_i,input_array[1].to_i)
else
  puts super_fizz.output(input.to_i)
end
