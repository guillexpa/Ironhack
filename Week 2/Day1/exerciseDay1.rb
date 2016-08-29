require 'colorize'

class StringCalculator
  def add(numbers)
    numbers.split("\n").reduce(0){|sum,n| sum + n.to_i}
  end
end

puts "Result = #{StringCalculator.new.add("1\n4")}".green
