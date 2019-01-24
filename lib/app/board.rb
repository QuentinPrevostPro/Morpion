require 'app/boardcase.rb'
class Board
  attr_accessor :A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3, :board_game
  #Initialisation du tableau correspond au plateau de jeu
  def initialize
    @A1 = Boardcase.new
    @A2 = Boardcase.new
    @A3 = Boardcase.new
    @B1 = Boardcase.new
    @B2 = Boardcase.new
    @B3 = Boardcase.new
    @C1 = Boardcase.new
    @C2 = Boardcase.new
    @C3 = Boardcase.new
    @board_game = [[@A1.params, @A2.params, @A3.params], [@B1.params, @B2.params, @B3.params], [@C1.params, @C2.params, @C3.params]]
  end
  #Mise à jour d'une valeur du tableau
  def update_boardcase(boardcase, value)
    boardcase.params = value
  end
  #Mise à jour de l'ensemble du tableau
  def update_boardgame
    @board_game = [[@A1.params, @A2.params, @A3.params], [@B1.params, @B2.params, @B3.params], [@C1.params, @C2.params, @C3.params]] 
  end
end
