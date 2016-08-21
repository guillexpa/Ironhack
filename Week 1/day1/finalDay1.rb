class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end

end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]


def averagePrice(array)
  price = array.reduce(0) do |sum, array|
    sum + array.price
  end

  puts "The average price is:"
  puts price / array.length

end





#printea toda la info del array que le pases
def printHome (array)
  array.each do |home|
    puts " #{home.name} in #{home.city} \n Price: $#{home.price} a night"
  end
end

#entra un array cualquiera de objetos y un string "city"
def filterByCity(array,city)
  filtered_homes = array.select do |homes|
      homes.city == city
  end

  printHome(filtered_homes)  #no funciona porque no es un array, es un solo valor, CREO!!!!!!!
  averagePrice(filtered_homes)

end

#entra un parametro precio "price" y devuelve un array de homes con el precio selecionado
def findingByPrice(array, price)
  found_price = array.find do |home|
    array.price == price
  end

  printHome(found_price)


end


# pide un array con el que hacer sorting segun el usuario. Llama a printHome para dar el resultado
# y recurre la función para que vuelva a preguntar el sorting

def sortingHomes(array)
  puts""
  puts "Sort by: \n\t 1.-Price \n\t 2.-Capacity \n\t 3.-Exit"
  sorting = gets.chomp
  #necesitamos también poder hacer un sorting a la inversa, de mayor a menor
  if sorting.downcase == "price"

    sorted_price = array.sort{|x,y| x.price <=> y.price}
    printHome(sorted_price)
    return sortingHomes(array)

  elsif sorting.downcase == "capacity"

    sorted_capacity = array.sort{|x,y| x.capacity <=> y.capacity}
    printHome(sorted_capacity)
    return sortingHomes(array)

  elsif sorting.downcase == "exit"

    puts "Bye,have fun!!"

  else

    puts "Enter a valid option, please"
    return sortingHomes(array)

  end

end

printHome(homes)
puts""
puts "----------------------------------------"
puts""
sortingHomes(homes)
puts""
puts "----------------------------------------"
puts""
filterByCity(homes, 'San Juan')
puts""
puts "----------------------------------------"
puts""
findingByPrice(homes, 41)


# #CREATING A PRICE ARRAY WITH .MAP
#
# prices = []
#
# prices = homes.map do |homes|
#   homes.price
# end
#
#
# #AVERAGE PRICE WITH .EACH
#
# sum = 0
# prices.each do |price|
#   sum = sum + price
# end
#
# puts ""
# puts "Average price: $#{sum / prices.length}"
#
#
# #AVERAGE CAPACITIES WITH .REDUCE
#
# total_capacities = homes.reduce(0.0) do |sum, hm|
#   sum + hm.capacity
# end
#
# puts "The average capacity is:"
# puts total_capacities / homes.length
#
#
# #AVERAGE PRICE WITH .REDUCE
#
# price = homes.reduce(0) do |sum, homes|
#   sum + homes.price
# end
#
# puts "The average price is:"
# puts price / homes.length
#
