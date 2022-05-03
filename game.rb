class Game 
  attr_accessor :p1, :p2, :turn, :current_player
 
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @turn = 0
    @current_player = @p1
  end

  def new_turn
    @turn += 1
  end

  def check(player_input, answer)
    if player_input == answer
      true
    else
      false
    end
  end

  def new_question
    question = Question.new
    answer = question.answer
    game_question = "#{question.display}"
    puts "#{@current_player.name}: #{game_question}"
    player_input = gets.chomp.to_i

    if answer != player_input
      puts "#{@current_player.name}: Seriously? No"
      @current_player.name == @p1.name ? @p1.wrong_answer : @p2.wrong_answer
    else
      puts "#{@current_player.name}: Yes! You are correct"
    end
  
  end

  def start
    while !@current_player.game_over?

      new_question
      
      if @p1.game_over? || @p2.game_over? 
          if @p1.lives > 0 
              puts "#{@p1.name} wins with a score of #{@p1.lives}/3" 
          else 
              puts "#{@p2.name} wins with a score of #{@p2.lives}/3"
          end
          p "---GAME OVER---"
          puts "Good bye!"
      else
          puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
          puts "----NEW TURN----"
          @current_player.name == @p1.name ? @current_player = @p2: @current_player = @p1
      end
    end
  end

end
