class Car
  def initialize (name, sound)
    @name = name
    @sound = sound
    @cities = []

  end



  def printsBroom
    puts @sound
  end

  def self.speedControl
    puts "Como de trallao va el buga?"
    speed = gets.chomp.to_i

    if speed > 100
      puts "Speed above 100km, cuidadooorl!"
    end
  end

  def cities
    @cities.each do |city|
      puts "El coche de la marca #{@name} ha pasado por la ciudad de #{city}"
    end
    IO.read('cities.txt')
    # IO.readlines('cities.txt')
  end

  def visitCities(city)
    @cities.push(city)
    IO.write('cities.txt', @cities)
    # #cities = IO.readlines("cities.txt").map {|line| line.chomp}
    # cities << city
    # #IO.write('cities.txt', cities.join("\n"))

  end


end

class RacingCar < Car
  def initialize (name)
    # @name = name
    super(name, "BROOOOOOOM")
  end
  # def printsBroom
  #   puts "BROOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOM"
  # end
end

class Persona
  attr_reader :name
  attr_accessor :age
  def initialize (name, age)
    @name = name
    @age = age
  end
end

#la arroba de las variables en el metodo constructor indica que son los atributos
#que diferencian las diferentes instancias de una clase. Son instance variables.


# las variables de clase, que son comunes para todas las instancias de la clase, se
# representan con doble arroba.

# existen metodos de clase, que no se pueden usar en las instancias de clase. son
# metodos normales que se definen como "def self.name_meth", con el prefijo self.

seat = Car.new("Seat", "moc moc")
ford = Car.new("Ford", "broom brooom mooooc")
audi = Car.new("Audi", "BROOOOM")
ferrari = RacingCar.new("Ferrari")
yo = Persona.new("Guille", 25)

# cities = ["Barcelona", "Girona", "Lyon", "Paris", "Londres"]



seat.printsBroom
ford.printsBroom
audi.printsBroom
ferrari.printsBroom

Car.speedControl
puts "------------Visited cities---------------------"
seat.visitCities('Barcelona')
seat.visitCities('Girona')
seat.visitCities('Lyon')
seat.visitCities('Paris')
seat.visitCities('Londres')

seat.cities
