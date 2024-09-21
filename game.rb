class Game
  attr_accessor :board, :winner

  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name, "X")
    @player2 = Player.new(player2_name, "O")
    @board = Board.new()
    @current_player = @player1
    @winner = false
  end

  def play_round()
    puts "it is #{@current_player.name}'s turn"

    puts 'Enter space "row col"'

    input = gets.chomp.split(" ")

    row = input[0].to_i
    col = input[1].to_i

    board.place_token(row, col, @current_player.token)

    board.display()
    if (@current_player == @player1)
      @current_player = @player2
    else
      @current_player = @player1
    end

    check_winner()

  end

  def check_winner()
    check_rows()
    check_cols()
    check_diag()
  end

  def check_rows()
    if @board[0][0] === @board[0][1] && @board[0][1] === @board[0][2]
      @winner = true
    elsif @board[1][0] === @board[1][1] && @board[1][1] === @board[1][2]
      @winner = true
    elsif @board[2][0] === @board[2][1] && @board[2][1] === @board[2][2]
      @winner = true
    else
      return
    end
  end

  def check_cols()
    if @board[0][0] === @board[1][0] && @board[1][0] === @board[2][0]
      @winner = true
    elsif @board[0][1] === @board[1][1] && @board[1][1] === @board[2][1]
      @winner = true
    elsif @board[0][2] === @board[1][2] && @board[1][2] === @board[2][2]
      @winner = true
    else
      return
    end
  end

  def check_cols()
    if @board[0][0] === @board[1][1] && @board[1][1] === @board[2][2]
      @winner = true
    elsif @board[2][0] === @board[1][1] && @board[1][1] === @board[0][2]
      @winner = true
    else
      return
    end
  end
end