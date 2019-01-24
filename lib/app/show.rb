require 'app/boardcase.rb'
require 'app/board.rb'
require 'app/game.rb'
class Show
  attr_accessor :game
  #Initilialisation de l'affichage du plateau de jeu
  def initialize
    @game = Game.new
    rows = []
    rows << [@game.board.A1.params, @game.board.A2.params, @game.board.A3.params]
    rows << :separator
    rows << [@game.board.B1.params, @game.board.B2.params, @game.board.B3.params]
    rows << :separator
    rows << [@game.board.C1.params, @game.board.C2.params, @game.board.C3.params]
    table = Terminal::Table.new :rows => rows
  end
  #Actualisation de l'affichage à chaque fin de tour
  def update
    rows = []
    rows << [@game.board.A1.params, @game.board.A2.params, @game.board.A3.params]
    rows << :separator
    rows << [@game.board.B1.params, @game.board.B2.params, @game.board.B3.params]
    rows << :separator
    rows << [@game.board.C1.params, @game.board.C2.params, @game.board.C3.params]
    table = Terminal::Table.new :rows => rows
    system("clear")
    puts table
  end
end