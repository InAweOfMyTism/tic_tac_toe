class Board 
  attr_accessor :spaces

  def initialize()
    @spaces = Array.new(3) {Array.new(3, " ")}
  end

  def display()
    puts "-------------"
    puts "| #{@spaces[0][0]} | #{@spaces[0][1]} | #{@spaces[0][2]} |"
    puts "-------------"
    puts "| #{@spaces[1][0]} | #{@spaces[1][1]} | #{@spaces[1][2]} |"
    puts "-------------"
    puts "| #{@spaces[2][0]} | #{@spaces[2][1]} | #{@spaces[2][2]} |"
    puts "-------------"
  end

  def clear()
    @spaces.each do |row|
      row.each do |space|
        space = ' '
      end
    end
  end

  def place_token(row, col, token)
    if @spaces[row][col] === ' '
      @spaces[row][col] = token
    else 
      return
    end
  end

end