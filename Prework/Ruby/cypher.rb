def solve_cypher(input, shift)
  input_array = input.split(//)
  output_array = []

  input_array.each do |letter|

    num = letter.ord - shift

    if num == 96
      num = 122
    end 

    newletter = num.chr
    output_array.push newletter

  end

  return output_array.join

end

puts "Tell me a word"
input = gets.chomp
puts "Tell me the left shift you want"
shift = gets.chomp.to_i
puts solve_cypher(input, shift)
