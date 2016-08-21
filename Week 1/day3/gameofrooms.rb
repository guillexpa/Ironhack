# GAME CLASS
# =>  character, map
# =>  updates player movement depending on room
# =>  should end sometime

class Game
  def initialize (player, map)
    @map = map
    @player = player
  end

  # update es el tocho del programa. comprueba que el input del usuario
  # coincide con alguna de las direciones de las puertas de la habitación
  # en la que se situa.
  # =>  Si se cumple, deja que el personaje se mueva y
  #     hace print de la nueva ubicacion.
  # =>  Si no, le dice que no se puede y le
  #     printea la habitación donde se situa de nuevo

  def update(input)
    move = false
    @map[@player.positionY][@player.positionX].doors.each do |door|
      if door.direction == input
        @player.move(input)
        @map[@player.positionY][@player.positionX].printRoom
        move = true
      end
    end
    if move == false
      print "There are no doors at that direction. "
      @map[@player.positionY][@player.positionX].printRoom
    end
  end

  def start
    puts '        _______      _______      __   __      _______ '
    puts '       |   ____|    |   _   |    |  \ /  |    |   _   |'
    puts "       |  |   _     |  |_|  |    |       |    |   ____|"
    puts '       |  |__| |    |   _   |    | |\ /| |    |  |____'
    puts "       |_______|    |__| |__|    |_|   |_|    |_______|"
    puts ""
    puts ""
    @map[@player.positionY][@player.positionX].printRoom
  end
end

# CHARACTER CLASS
# => name, position
# => moves (changes position) to E,W,S,N
# => saves items that collects in the inventory

class Character
  attr_accessor :name, :positionX, :positionY
  def initialize(name, positionX, positionY)
    @inventory = []
    @name = name
    @positionX = positionX
    @positionY = positionY
  end

  def move(input)
    case input
    when 'north'
      @positionX
      @positionY-=1
      # x,y+1
    when 'south'
      @positionX
      @positionY+=1
      # x,y-1
    when 'east'
      @positionX+=1
      @positionY
      # x+1,y
    when 'west'
      @positionX-=1
      @positionY
      # x-1,y
    end

    def saveItem(item)
      @inventory << item
    end
  end
end

# ROOM class
# => name, doors
# => can go through depending on doors
# => has items

class Room
  attr_accessor :doors, :name
  def initialize (name, doors)
    @name = name
    @doors = doors
    @items = []
  end

  def printRoom
    puts "You are in a #{@name}. "
    print "\n   Exits: "
    @doors.each {|doors| print "\n\t  -#{doors.direction.upcase} "}
    puts "\n>"
  end
end

# DOOR class
# =>  direction: E,W,S,N

class Door
  attr_accessor :direction
  def initialize(direction)
    @direction = direction
  end
end

#OBJECT class
# => name, position ?
# => should have a condition for something

class Item
  def initialize(name)
    @name = name
  end
end

#MONSTER class
# => name
# => can kill character

class Monster
  def initialize(name)
    @name = name
  end
end

#--------------EXECUTION-----------------

# => Door generation

north = Door.new("north")
east = Door.new("east")
west = Door.new("west")
south = Door.new("south")

# => Map generation

map = [   # x------->
          [Room.new("one", [east]), Room.new("two", [west, south]), Room.new("three", [south])],
          [Room.new("four", [east, south]), Room.new("five", [west, east, north]), Room.new("six", [west, north])],
          [Room.new("seven", [north, east]), Room.new("eight", [west, east]), Room.new("nine", [west])]
      ]

# => Object generation

sword = Item.new("sword")
key = Item.new("key")

# => Player and Game generation

player = Character.new("Guille",0,0)
game = Game.new(player,map)

# => GAME START

game.start

while true
  game.update(gets.chomp.downcase)
end
