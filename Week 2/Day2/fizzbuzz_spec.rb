require_relative 'fizzbuzz'

describe FizzBuzz do
  it "it returns the number you have entered if its not multiple of 3 or 5" do
    @fizzbuzz = FizzBuzz.new(7)
    expect(@fizzbuzz.fizzbuzz).to eq(7)
  end

  it "it returns Fizz string if is 3 multiple" do
    @fizzbuzz = FizzBuzz.new(3)
    expect(@fizzbuzz.fizzbuzz).to eq("Fizz")
  end

  it "it returns Buzz string if is 5 multiple" do
    @fizzbuzz = FizzBuzz.new(5)
    expect(@fizzbuzz.fizzbuzz).to eq("Buzz")
  end

  it "it returns FizzBuzz string if is 3 and 5 multiple" do
    @fizzbuzz = FizzBuzz.new(15)
    expect(@fizzbuzz.fizzbuzz).to eq("FizzBuzz")
  end

end



#  before :each do
#    @case = FizzBuzz.new
#  end
