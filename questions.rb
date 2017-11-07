class Question
attr_reader :x, :y

  def initialize
    @x = rand(1...20)
    @y = rand(1...20)
  end

  def ask_question(current_player)
    puts "#{current_player}: What does #{@x} plus #{@y} equal?"
  end

  def get_answer
    @x + @y
  end

end