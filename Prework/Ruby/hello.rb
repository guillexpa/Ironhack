puts "Hello world"
#this is a comment
puts "Hello again"
puts "bye bye"
variable = 5
string = "hola "
print string
puts variable

operation_result = 5*3
print "The operation result is "
puts operation_result

multiline ="""

Erase una vez la historia blablablabla
blablablablaba
woiehruiwer werpwe 98weyr wdfupwerf
9weur woejrwe


"""
puts "Whats your name?"
name = gets.chomp
puts "Hi #{name}"

puts "Now, give me two numbers"
numone = gets.chomp.to_i
numtwo = gets.chomp.to_i
puts "#{numone} x #{numtwo} = #{numone*numtwo}"

file_content= IO.read("name.txt")
puts "My name is #{file_content}"

puts "Change your name"
name = gets.chomp
IO.write('name2.txt', name)
