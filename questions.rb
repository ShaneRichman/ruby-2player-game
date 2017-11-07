class Question
attr_reader :x, :y

  def initialize
    @x = rand(1...20)
    @y = rand(1...20)
  end

  def make_question
    "What does #{@x} plus #{@y} equal?"
  end

  def get_answer
    @x + @y
  end

end