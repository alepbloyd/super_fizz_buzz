require 'rspec'
require 'pry'
require './lib/super_fizz_buzz.rb'

RSpec.describe SuperFizzBuzz do

  it 'exists' do
    super_fizz = SuperFizzBuzz.new
    expect(super_fizz).to be_instance_of(SuperFizzBuzz)
  end

  it 'returns "SuperFizzBuzz" on number evenly divisible by 3, 5, and 7' do
    super_fizz = SuperFizzBuzz.new
    expect(super_fizz.output(105)).to eq("SuperFizzBuzz")
  end

  it 'returns input number if prime' do
    super_fizz = SuperFizzBuzz.new
    expect(super_fizz.output(19)).to eq("19")
  end

  it 'returns range of outputs when given range' do
    super_fizz = SuperFizzBuzz.new
    expect(super_fizz.output_range(8,15)).to eq(["8", "Fizz", "Buzz", "11", "Fizz", "13", "Super", "FizzBuzz"])
  end

end
