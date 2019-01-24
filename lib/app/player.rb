class Player
  attr_accessor :P1, :P2
  #Saisie des noms des deux jours
  def initialize
    system("clear")
    puts "Bienvenue dans cette partie de Morpion.\n#{"Joueur 1".colorize(:blue)}, veuillez choisir votre nom:"
    print ">"
    @P1 = gets.chomp.to_s
    puts "#{"Joueur 2".colorize(:red)}, veuillez choisir votre nom:"
    print ">"
    @P2 = gets.chomp.to_s
  end
end