class Controller

  def initialize
    @board = Board.new
    @index = Index.new
  end

  def new_game(player_1, player_2)
    @players = [player_1, player_2]
    @morpion = Morpion.new
    turn
  end

  def turn
    x = 0
    while x == 0
      player_item = "x"
      @players.each do |player|
        system("clear")
        @board.show(@morpion)
        while @morpion.check_choice(choice = @index.ask(player)) == false
          @index.wrong
        end
        @morpion.player_choice(choice, player_item)
        x = check_end(player)
        player_item = "o"
      end
    end
  end

  def check_end(player)
    case @morpion.check_end
    when 1
      @index.win(player)
      @board.show(@morpion)
      return 1
      break
    when 2 
      @index.draw
      @board.show(@morpion)
      return 1
      break
    else 
      return 0
    end
  end

end