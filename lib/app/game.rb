require 'app/player.rb'
require 'app/board.rb'

class Game
  attr_accessor :board, :player
  def initialize
    @board= Board.new
    @player = Player.new
    @boardcase_full = []
    system("clear")
  end
  #Execution d'un tour de jeu
  def round(player)
    puts "#{player=="0" ? @player.P1 : @player.P2}, dans quelle case souhaitez-vous vous placer?"
    puts "1. A1"
    puts "2. A2"
    puts "3. A3"
    puts "4. B1"
    puts "5. B2"
    puts "6. B3"
    puts "7. B4"
    puts "8. B5"
    puts "9. B6"
    print ">"
    choix = gets.chomp.to_i
    if @boardcase_full.include?(choix)
      puts "Cette case est déjà prise. Veuillez en choisir une autre."
      round(player)
    else
      @boardcase_full << choix
      case choix
      when 1
        @board.update_boardcase(@board.A1,player)
        @board.update_boardgame
      when 2
        @board.update_boardcase(@board.A2,player)
        @board.update_boardgame
      when 3
        @board.update_boardcase(@board.A3,player)
        @board.update_boardgame
      when 4
        @board.update_boardcase(@board.B1,player)
        @board.update_boardgame
      when 5
        @board.update_boardcase(@board.B2,player)
        @board.update_boardgame
      when 6
        @board.update_boardcase(@board.B3,player)
        @board.update_boardgame
      when 7
        @board.update_boardcase(@board.C1,player)
        @board.update_boardgame
      when 8
        @board.update_boardcase(@board.C2,player)
        @board.update_boardgame
      when 9
        @board.update_boardcase(@board.C3,player)
        @board.update_boardgame
      end
      @boardcase_full.count == 9 ? draw_private : nil
      win_condition_private(@board)
    end
  end

  private
  #Les 8 conditions de victoire
  def win_condition_private(board)
    if @board.A1.params == @board.A2.params && @board.A3.params == @board.A2.params && @board.A1.params != " "
      end_game_private(player)
    end
    if @board.B1.params == @board.B2.params && @board.B3.params == @board.B2.params && @board.B1.params != " "
      end_game_private(player)
    end
    if @board.C1.params == @board.C2.params && @board.C3.params == @board.C2.params && @board.C1.params != " "
      end_game_private(player)
    end
    if @board.A1.params == @board.B1.params && @board.A1.params == @board.C1.params && @board.A1.params != " "
      end_game_private(player)
    end
    if @board.A2.params == @board.B2.params && @board.A2.params == @board.C2.params && @board.A2.params != " "
      end_game_private(player)
    end
    if @board.A3.params == @board.B3.params && @board.A3.params == @board.C3.params && @board.A3.params != " "
      end_game_private(player)
    end
    if @board.A1.params == @board.B2.params && @board.B2.params == @board.C3.params && @board.A1.params != " "
      end_game_private(player)
    end
    if @board.A3.params == @board.B2.params && @board.B2.params == @board.C1.params && @board.A3.params != " "
      end_game_private(player)
    end
  end
  #La fin de partie en cas de victoire
  def end_game_private(player)
    puts "Félicitations #{player=="0" ? @player.P1 : @player.P2}, vous avez gagné."
    puts "Souhaitez-vous refaire une partie (O/N)?"
    print ">"
    prochaine_partie = gets.chomp.upcase
    prochaine_partie == "O" ? Application.new.perform : abort("Fin de partie, au revoir!")
  end
  #La fin de parie en cas d'égalité
  def draw_private
    puts "Personne n'a gagné, c'est une égalité."
    puts "Souhaitez-vous refaire une partie (O/N)?"
    print ">"
    prochaine_partie = gets.chomp.upcase
    prochaine_partie == "O" ? Application.new.perform : abort("Fin de partie, au revoir!")

  end
end