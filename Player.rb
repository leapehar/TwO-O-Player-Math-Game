class Player 

  attr_accessor :playerlives, :name

  def initialize(name)
    @name = name
    @playerlives = 3
  end
end