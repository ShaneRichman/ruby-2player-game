class Players
attr_reader :name

  def initialize(name)
    @lives = 3
    @name = name
  end

  def give_answer(number)
    @answer = number
  end

  def get_lives
    "#{@lives}/3"
  end

end