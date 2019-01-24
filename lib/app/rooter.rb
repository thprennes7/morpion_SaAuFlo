class Rooter

  def initialize
    @controller = Controller.new
  end
  
  def perform
    system("clear")
    puts "Bonjour ! Bienvenue dans le jeu du Morpion, veuillez renseigner le nom des joueurs !"
    print "Joueur 1 x : "
    @player_1 = gets.chomp
    print "Joueur 2 o : "
    @player_2 = gets.chomp
    puts "Bienvenue #{@player_1} et #{@player_2}, tenez vous prêt, c'est parti !"
    @controller.new_game(@player_1, @player_2)
  end
    
  def end_game
    prompt = TTY::Prompt.new
    prompt.select("La partie est terminée, que voulez-faire?", cylcle: true) do |menu|
        menu.choice 'Recommencer une partie avec de nouveaux joueurs', -> {perform}
        menu.choice 'Recommencer une partie avec les même joueur', ->{@controller.new_game(@player_1, @player_2)}
        menu.choice 'Quitter le jeu', -> {"Merci d'avoir joué, à bientôt!" }
    end
  end


end