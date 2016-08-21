class User

  def initialize (username, password)
    @username = username
    @password = password
  end

  def password
    @password
  end

  def username
    @username
  end
end

# module validator
#
#
# class Password
#   def initialize(password)
#     @password = password
#   end
#
#   def validate(input)
#     if input == @password
#       true
#     else
#       false
#     end
#   end
# end
#
#
# class User
#   def initialize(username)
#     @username = username
#   end
#
#   def validate(input)
#     if input == @username
#       true
#     else
#       false
#     end
#   end
# end


class WordCounter
  def changer (string)
    array = string.split(" ")
    puts "Your sentence has #{array.length} words"
  end
end

class LetterCounter
  def changer (string)
    stringtwo = string.delete " "
    puts "Your sentence has #{stringtwo.size} letters"
  end
end

class TextReverser
  def changer (string)
    puts "#{string.reverse!}"
  end
end

class Uppercaser
  def changer (string)
  end
end

def validator
  user = User.new("guille", "hello")
  puts "Enter your username"
  usuario = gets.chomp

  puts "Enter your password"
  pass  = gets.chomp

  if usuario == user.username
    if pass == user.password
      puts "Correct"
      puts "-----------------------\nChoose your option\n\t 1.-Count words\n\t 2.-Count letters\n\t 3.-Reverse text\n\t 4.-Uppercase words"
      option = gets.chomp

      puts "Enter a sentence"
      string = gets.chomp
      process[option.to_i-1].changer(string)

    else
      puts "Please, try again"
      return validator
    end
  else
    puts "Please, try again"
    return validator
  end
end

process = [WordCounter.new,LetterCounter.new,TextReverser.new,Uppercaser.new]
validator
