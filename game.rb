class Game
  attr_accessor :

  def iniitialize(player_x, player_o)
    @player_x = player_x
    @player_o = player_o
    @winner = false
    @board = Array.new(3, Array.new(3, '_'))
    @win_conditions = 
  end

  def play_game()
    # do some code
  end


  private

  def clear_board()
    # do some code
  end

  def display_board()
    # do some code
  end

  def place_token(row, col, token)
    # do some code
  end

  def check_winner()
    # do some code
  end
  
  def display_winner(winning_player)
    # do some code
  end
end