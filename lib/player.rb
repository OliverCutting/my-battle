class Player
  
  attr_reader :name
  attr_accessor :hp
  
  def initialize(name = "Player 1")
    @hp = 100
    @name = name
  end

  def receives_damage
    @hp -= rand(1..20)
  end

end