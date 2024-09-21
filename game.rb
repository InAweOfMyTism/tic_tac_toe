class Game
  attr_accessor :winner

  def initialize()
    @player_x
    @player_o
    @winner = false
    @board = Array.new(3) { Array.new(3, ' ') }
    display_board()
  end

  def play_game()
    # do some code
    # clear board
    # start with player X
    # loop
    #   place token
    #   check winner
    #   play next round
  end




  private

  def begin_game()
    puts "How to play:"
    puts "Player X - Enter Name:"
    player_x = gets.chomp
    puts "Player O - Enter Name:"
    player_o = gets.chomp
    self.clear_board()
  end

  def clear_board()
    # do some code
  end

  def display_board()
    # do some code
    puts "-------------"
    puts "| #{@board[0][0]} | #{@board[1][0]} | #{@board[2][0]} |"
    puts "-------------"
    puts "| #{@board[0][1]} | #{@board[1][1]} | #{@board[2][1]} |"
    puts "-------------"
    puts "| #{@board[0][2]} | #{@board[1][2]} | #{@board[2][2]} |"
    puts "-------------"

  end

  def place_token(row, col, token)
    # do some code
  end

  def check_winner()
    # do some code
    # check rows
    # check cols
    # check diagonals
  end
  
  def display_winner(winning_player)
    # do some code
  end


end