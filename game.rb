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
    check_winner()

    @current_player.win() if @winner

    if (@current_player == @player1)
      @current_player = @player2
    else
      @current_player = @player1
    end


  end

  def check_winner()
    check_rows()
    check_cols()
    check_diag()
  end

  def check_rows()
    if @board.spaces[0][0] === @board.spaces[0][1] && @board.spaces[0][1] === @board.spaces[0][2] && @board.spaces[0][0] != ' '
      @winner = true
    elsif @board.spaces[1][0] === @board.spaces[1][1] && @board.spaces[1][1] === @board.spaces[1][2] && @board.spaces[1][0] != ' '
      @winner = true
    elsif @board.spaces[2][0] === @board.spaces[2][1] && @board.spaces[2][1] === @board.spaces[2][2] && @board.spaces[2][0] != ' '
      @winner = true
    else
      return
    end
  end

  def check_cols()
    if @board.spaces[0][0] === @board.spaces[1][0] && @board.spaces[1][0] === @board.spaces[2][0] && @board.spaces[0][0] != ' '
      @winner = true
    elsif @board.spaces[0][1] === @board.spaces[1][1] && @board.spaces[1][1] === @board.spaces[2][1] && @board.spaces[0][1] != ' '
      @winner = true
    elsif @board.spaces[0][2] === @board.spaces[1][2] && @board.spaces[1][2] === @board.spaces[2][2] && @board.spaces[0][2] != ' '
      @winner = true
    else
      return
    end
  end

  def check_diag()
    if @board.spaces[0][0] === @board.spaces[1][1] && @board.spaces[1][1] === @board.spaces[2][2] && @board.spaces[0][0] != ' '
      @winner = true
    elsif @board.spaces[2][0] === @board.spaces[1][1] && @board.spaces[1][1] === @board.spaces[0][2] && @board.spaces[2][0] != ' '
      @winner = true
    else
      return
    end
  end
end