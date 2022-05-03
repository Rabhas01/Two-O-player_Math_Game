require "./player"
require "./question"
require "./game"

puts "Player one - enter your name:"
input1 = gets.chomp
@p1 = Player.new(input1)

puts "Player two - enter your name:"
input2 = gets.chomp
@p2 = Player.new(input2)

game = Game.new(@p1, @p2)

puts "Lets play a Game"
game.start