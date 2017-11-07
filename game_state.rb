require "./players.rb"
require "./questions.rb"

class Game_State

  def initialize(name1, name2)
    @player1 = Players.new(name1)
    @player2 = Players.new(name2)
    @turn = true
  end

  def state_lives
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
  end

  def ending(name, lives)
    puts "#{name} wins with a score of #{lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def play_game
    while @player1.is_alive? && @player2.is_alive?
      current_question = Question.new
      if @turn == true
        current_question.ask_question(@player1.name)
        if @player1.give_answer(gets.chomp).to_i == current_question.get_answer
          puts "YES! You are correct."
        else
          puts "#{@player2.name}Seriously? No!"
          @player1.lose_life
        end
        self.state_lives
      else
        current_question.ask_question(@player2.name)
        if @player2.give_answer(gets.chomp).to_i == current_question.get_answer
          puts "YES! You are correct."
        else
          puts "#{@player1.name}Seriously? No!"
          @player2.lose_life
        end
        self.state_lives
      end
      puts "----- NEW TURN -----"
      @turn = !@turn
    end
    if @player1.is_alive?
      self.ending(@player1.name, @player1.lives)
    else
      self.ending(@player2.name, @player2.lives)
    end
  end
end

puts "Player 1, please write your name"
player1 = gets.chomp

puts "Player 2, please write your name"
player2 = gets.chomp


game = Game_State.new(player1, player2)
game.play_game