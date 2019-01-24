class Index

  def initialize
  end
  
  def ask(player)
    print "#{player}, choisis quelle case jouer : "
    choice = gets.chomp
    return choice
  end

  def wrong
    puts "Vous avez entré une case erroné ou déjà pris"
    puts "Recommencez !"
  end
end