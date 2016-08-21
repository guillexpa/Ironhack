def sort(sentence)
  sentence_array = sentence.gsub(/[.,;!?]/,'').split(' ')
  .sort{ |x,y| x.downcase <=> y.downcase}
  puts sentence_array
end



puts "Enter your sentence"
sentence = gets.chomp
sort(sentence)
