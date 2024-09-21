class Board 
  def initialize()
    @spaces = Array.new(3) {Array.new(3, " ")}
  end

  def display()
    puts "---------"
    puts "| #{@spaces[0][0]} | #{@spaces[0][1]} | #{@spaces[0][2]}"
    puts "---------"
    puts "| #{@spaces[1][0]} | #{@spaces[1][1]} | #{@spaces[1][2]}"
    puts "---------"
    puts "| #{@spaces[2][0]} | #{@spaces[2][1]} | #{@spaces[2][2]}"
    puts "---------"
  end
end