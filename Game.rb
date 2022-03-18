require "./Player"
require "./Turn"

class Game

  def play 
  first = Player.new("1")
  secound = Player.new("2")
  turn1 = Turn.new
  turn1.repeat_question(first, secound)
  end

