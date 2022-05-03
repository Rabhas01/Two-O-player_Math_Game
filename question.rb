class Question 
  attr_accessor :n1, :n2, :answer

  def initialize
    @n1 = rand(1..20)  # generate random number 1
    @n2 = rand(1..20)  # generate random number 2
    @answer = @n1 + @n2
  end

  def display
    "What does #{@n1} plus #{@n2} equal?"
  end
  
  # def check(answer)
  #   true if answer == @answer
  #   false unless answer == @answer
  # end

end
