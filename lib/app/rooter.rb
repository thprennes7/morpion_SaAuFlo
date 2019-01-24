# frozen_string_literal: true

class Rooter
  def initialize
    @controller = Controller.new
  end

  def perform
    #Début du jeu, les joueurs rentrent leurs noms
    system('clear')
    puts 'Bonjour ! Bienvenue dans le jeu du Morpion, veuillez renseigner le nom des joueurs !'
    print 'Joueur 1 x : '
    @player_1 = gets.chomp
    print 'Joueur 2 o : '
    @player_2 = gets.chomp
    puts "Bienvenue #{@player_1} et #{@player_2}, tenez vous prêt, c'est parti !"

    #Lancement du jeu
    @controller.new_game(@player_1, @player_2)
  end

  def end_game
    #Menu de fin du jeu, les joueurs on le choix de continuer, de recommencer, ou de laisser la main à d'autres joueurs
    prompt = TTY::Prompt.new
    prompt.select('La partie est terminée, que voulez-faire?', cylcle: true) do |menu|
      menu.choice 'Recommencer une partie avec de nouveaux joueurs', -> { 
        perform
        return true
      }
      menu.choice 'Recommencer une partie avec les même joueur', -> { 
        @controller.new_game(@player_1, @player_2) 
        return true
      }
      menu.choice 'Quitter le jeu', -> { 
        "Merci d'avoir joué, à bientôt!" 
        return false
      }
    end
  end
end
