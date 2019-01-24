require 'app/show.rb'
class Application 
  def initialize
    @show = Show.new
  end
  def perform
    i = 1
    while true
      # Tour du joueur 1
      if i.odd?
        @show.game.round("0".colorize(:blue))
        @show.update
        puts "Cliquez sur une touche pour passer au joueur suivant."
        gets.chomp
      # Tour du joueur 2
      else
        @show.game.round("X".colorize(:red))
        @show.update
        puts "Cliquez sur une touche pour passer au joueur suivant."
        gets.chomp
      end
      i += 1
    end
  end
end