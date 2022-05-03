class Player
    attr_accessor :name
    attr_reader :lives, :score

    def initialize(name)
      @name = name
      @lives = 3 
      @score = 0
    end
  
  def game_over?
    @lives == 0
  end

  def score_plus
    @score +=1
  end

  def wrong_answer
    @lives -= 1
  end
end