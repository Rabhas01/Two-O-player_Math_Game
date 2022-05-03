class Question 
  attr_accessor :question, :answer

  def initialize
    @n1 = rand(1..20)  # generate random number 1
    @n2 = rand(1..20)  # generate random number 2
    @answer = @n1 + @n2
  end

  