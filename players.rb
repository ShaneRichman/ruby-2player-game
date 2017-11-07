class Players
attr_reader :name, :lives, :answer

  def initialize(name)
    @lives = 3
    @name = name
    @answer = ''
  end

  def is_alive?
    @lives > 0
  end

  def lose_life
    @lives -= 1
  end

  def give_answer(number)
    @answer = number
  end

end