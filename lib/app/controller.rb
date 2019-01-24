class Controller

  def initialize
    @board = Board.new
    @index = Index.new
  end

  def new_game(player_1, player_2)
    @players = (player_1, player_2)
    morpion = Morpion.new
    turn
  end

  def turn
    x = 0
    while x == 0
      @players.each do |player|
        system("clear")
        @board.show(morpion)
        @index.ask(player)

      end
    end
  end
end