var = "This is a string"
name = "guille"
puts "Hello \nworld"


#Integers, floats and their methods
stars = 325_234_345_454
puts stars
num = 5
num.times {puts 'jarl'}
puts num.odd?
puts num.even?
puts num.round(-1)
puts num.round(1)


#String methods
puts name.capitalize
flavours = 'chocolate, mint, strawberry'
flavours_array = flavours.split(', ')
#split: divides the string with the specified character creating 3 different
#values that we save them into the flavoyrs_array array
number = flavours.length
puts number
puts 'awesome'.include? 'me'



#Arrays and methods
animals = [ 'Lions', 'Tigers', 'Bears']
puts animals

numbers = ['One', 2, 'Three']
puts numbers[1]
puts numbers[2]

my_array = []

my_array << "A"
my_array.push "B"
my_array.push "C"

puts my_array

my_array.delete_at 2

puts my_array

[4,6,2,4,7,12,9,12].sort #ordena
['g', 'e', 'n', 'w', 'a'].join(', ') #caso inverso del split, junta el array


#Hashes and methods
my_hash = {}

my_hash["AST"] = "Asturias"
my_hash['GAL'] = "Galicia"

puts my_hash["AST"]
puts my_hash['GAL']

puts my_hash

my_hash.select { |key, value| key.include?("G") }

#HINT: Para saber de que tipo es una variable

'what is this?'.class
