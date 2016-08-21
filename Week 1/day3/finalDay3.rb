#CLASS DEFINITION
require 'pry'
class Map
  # attr_reader :initial_room, :rooms
  def initialize (rooms,character)
    @rooms = rooms
    @character = character
  end
end


class Person
  def initialize (name)
    @name = name
  end
end

class Character < Person
  def initialize (name)
    @name = name
  end

  def move (input)
    case input

    when 'N'
      puts 'north'
    when 'E'
      puts "east"
    when 'W'
      puts "west"
    when 'S'
      puts "south"
    end
  end

end

class Npc < Person
  def initialize
    @name = name
  end

  def talk(message)
    puts message
  end
end

class Room
  attr_reader :doors
  def initialize (name, object)
    @name  = name
    @doors = []

  end

  def pushDoors(doors)
    @doors.push(doors)
  end

  def printMessage
    print "You are in #{@name}. "
    @doors.each do |door|
      puts "There is a door at the #{door.direction}"
    end
    puts ">"
  end

end

class Door
  attr_reader :direction
  def initialize (direction)
    @direction = direction
  end
end

class Objects
  def initialize (name)
    @name = name
  end
end






#DOOR GENERATION

n = Door.new('north')
e = Door.new('east')
w = Door.new('west')
s = Door.new('south')


#ROOM GENERATION

firstRoom = Room.new("a forest")
firstRoom.pushDoors(e)

secondRoom = Room.new("a dark room")
secondRoom.pushDoors(w)
secondRoom.pushDoors(s)

thirdRoom = Room.new("a room")
thirdRoom.pushDoors(s)

forthRoom = Room.new("a cold jail")
forthRoom.pushDoors(s)
forthRoom.pushDoors(e)

fifthRoom = Room.new("a nice lake")
fifthRoom.pushDoors(w)
fifthRoom.pushDoors(e)

sexthRoom = Room.new("a chapel")
sexthRoom.pushDoors(w)

seventhRoom = Room.new("a big desert")
seventhRoom.pushDoors(e)

eightRoom = Room.new("a huge mountain")
eightRoom.pushDoors(w)
eightRoom.pushDoors(e)

ninethRoom = Room.new("a dark room")
ninethRoom.pushDoors(w)

#OBJECT GENERATION

sword = Objects.new('sword')

#MAP GENERATION

roomsArray = [
              [firstRoom,secondRoom,thirdRoom],
              [forthRoom,fifthRoom,sexthRoom],
              [seventhRoom,eightRoom,ninethRoom]
            ]

playerOne = Character.new('Guille')

mapa = Map.new(roomsArray, playerOne)


roomsArray[0][1].printMessage
input = gets.chomp.upcase
playerOne.move(input)

# binding.pry

roomsArray[0][1].doors.each do |door|
  puts door.direction
end
