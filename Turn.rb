require "./Player"

class Turn
  attr_accessor :anwser
  @@number_of_turns = 1

  def initialize
    @anwser = 0
  end

  def total_turns
    @@number_of_turns
    puts "#{@@number_of_turns}"
  end

  def playTurn(first, secound)
     first.playerlives
     first.name
  end

  def currentPlayer(first, secound)
    @@number_of_turns % 2 == 0 ? secound : first
  end

  def question(first, secound)
    player = self.currentPlayer(first, secound)
    random1 = rand(1..20)
    random2 = rand(1..20)
    puts "player #{player.name} what does #{random1} plus #{random2} equal"
    player_answer = $stdin.gets.chomp.to_i
    self.anwser = random1 + random2
    if(player_answer == self.anwser)
      puts "Yes you are correct"
    else
      puts "Seriously?? no"
      player.playerlives -= 1
    end
    puts "p#{first.name}  #{first.playerlives}/3 vs p#{secound.name} #{secound.playerlives}/3"
    puts "----- NEW TURN -----"
  end

  def repeat_question(first, secound)
    while (first.playerlives > 0 && secound.playerlives > 0) do
      self.question(first, secound)
      @@number_of_turns += 1
    end
    if (first.playerlives != 0)
       puts "p#{first.name} wins with a score of #{first.playerlives}/3"
       puts "----- GAME OVER -----"
       puts "Good bye! :)"
    else
       puts "p#{secound.name} wins with a score of #{secound.playerlives}/3"
       puts "----- GAME OVER -----"
       puts "Good bye! :)"
    end
  end
end