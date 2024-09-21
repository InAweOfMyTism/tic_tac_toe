class Player
  attr_accessor :token, :name

  def initialize(name, token)
    @token = token
    @name = name
  end

  def win()
    puts "Player #{self.token} is the winner"
  end
end