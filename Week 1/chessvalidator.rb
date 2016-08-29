#BOARD class
# => 2 dimensions array
# => maybe shouldn't be a class lol

class Board
  def initialize
    @board = [][]
end

# PIECE class
# =>  has a position
# =>  can move

class Piece
  def initialize(positionX, positionY)
  end
end



class Rook < Piece
end
