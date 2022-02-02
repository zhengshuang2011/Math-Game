class Games 
  def initialize
    @player1 = Players.new("Player 1")
    @player2 = Players.new("Player 2")
  end

  def game_start
    puts "---- GAME START ----"
    puts "Welcome #{@player1.name} and #{@player2.name}"
    puts "P1: 3/3 vs P2: 3/3"
  end

  def game_end(player)
    puts "#{player.name} wins with a score #{player.lives}/3"
    puts "---- GAME OVER ----"
    puts "Good bye!"
    exit 
  end

  def check_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts "---- NEW TURN ----"
  end

  def check_if_win
    if @player1.dead?
      game_end(@player2)
    elsif @player2.dead?
      game_end(@player1) 
    end
  end

  def process 
    @player1.question
    check_if_win
    check_scores
    @player2.question
    check_if_win
    check_scores
    process
  end
end
   

