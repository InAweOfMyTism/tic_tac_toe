class Player
  def initialize(token)
    @token = token
    @score = 0
  end

  def win()
    puts "Player #{self.token} is the winner"
  end
end