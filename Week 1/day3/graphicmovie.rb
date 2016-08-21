require 'imdb'
require 'pry'

films = IO.readlines('films.txt')
ratings = {}

films.each do |film|
  search = Imdb::Search.new(film).movies
  i = 10
  j = 0


  # ratings[search[j].title] = search[j].rating.to_i
  while j < films.size
    if search[j].rating.to_i == i
      print "|#|"
    else
      print "| |"
    end
    j+=1
  end
  print "\n"
  i-=1
end

# rate = {}
# i = 10
# j = 0
# while j <= 10
#   while i >= 0
#     if value == i
#       rate["#{i}"][j] = true
#     else
#       rate["#{i}"][j] = false
#     end
#     i-=1
#   end
#   j+=1
# end
# end
#
#
# #
#
# rate.each do |key, value|
#   if value == false
#     prints "| |"
#   elsif value == true
#     prints "|#|"
#   end
#   puts""
# end
# #
# #
# rate = {
#   :1 => [false ,false ,false ,true ,5,6,7]
#   :2 => [1,2,3,4,5,6,7]
#   :3 => [1,2,3,4,5,6,7]
#   :4 => [1,2,3,4,5,6,7]
#   :5 => [1,2,3,4,5,6,7]
#   :6 => [1,2,3,4,5,6,7]
#   :7 => [1,2,3,4,5,6,7]
#   :8 => [1,2,3,4,5,6,7]
# }
