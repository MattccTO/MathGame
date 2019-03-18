class Question
  def initialize
    @first_number = rand(20) + 1
    @second_number = rand(20) + 1
  end

  def get_question
    "What does #{@first_number} plus #{@second_number} equal?"
  end

  def get_answer
    @first_number + @second_number
  end
end