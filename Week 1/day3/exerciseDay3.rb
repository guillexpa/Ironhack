# PRACTICA HASHES Y ARRAYS


# hash = {:wat => [0,1,{:wut => [2,[[1,2,3,4,5,6,7,8,9,{:bbq => "hola que ase"}]]]}]}
# array = [[[0,1],[2,3],[4,5],[6,7],[8,9],{:secret => {:unlock => [0, "hola que ase"]}}]]
#
#
# puts array[0][5][:secret][:unlock][1]
# puts hash[:wat][2][:wut][1][0][9][:bbq]


#EXERCIXE

class CarDealer
  def initialize(inventory)
    @inventory = inventory
  end

  def printCar(marca)#si tenemos un hash con symbols, podemos usar el to_sym o ":#{string}"
    print "#{marca}: "
    @inventory[marca].each do |car|
      print "#{car} "
    end

    # @inventory.each do |brand, cars|
    #   puts "#{brand}: #{cars.join(', ')}"
    # end

  end
end

inventory = {
  "Ford" => ['Fiesta','Mustang','Escort','Ka'],
  "Honda" => ['Civic','CR-V','NSX','Jazz'],
  "Seat" => ['Ibiza','Leon','Altea', 'Toledo'],
  "Audi" => ['A3','A4','A6','A8']
}



concesionario = CarDealer.new (inventory)
concesionario.printCar("Ford")
concesionario.printCar("Honda")
concesionario.printCar("Audi")

puts""
puts"----------------------"


class Car
  def initialize(engine)
    @engine = engine
  end
  def noise
    return "brooom #{@engine.noise}"
  end
end

class Engine
  def noise
    return "bum bum bum"
  end
end

class BadEngine
  def noise
    return "poof poof"
  end
end

car = Car.new(Engine.new)
puts car.noise
