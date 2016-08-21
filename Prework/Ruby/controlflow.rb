#IF AND ELSIF
puts "What is your favorite animal?"
animal = gets.chomp
if animal == “Dog”
  print “You like dogs. Woof!”
elsif animal == “Cat”
  print “You like cats. Meow!”
else
  print "You don’t like cats or dogs? Okay."
end



#FOR
numbers = [1,2,3]
for element in numbers
  puts "-> #{element}"
end




#WHILE
string = ""
# While the string's length is less than 10
while string.length < 10
  # Add an 'a'
  string = string + 'a'
end
puts "The final string is #{string}"




#ARRAY AND HASH ITERATIONS
numbers = [ "One", 2, "Three" ]
numbers.each do |item|
  puts "--> #{item}"
end


my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"
my_hash["CAT"] = "Catalunya"

my_hash.each do |key,value|
  puts "#{key} stands for #{value}"
end
