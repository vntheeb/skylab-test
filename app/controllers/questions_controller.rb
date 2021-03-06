class QuestionsController < ApplicationController
  def question1
    @array = [9, 1, 8, 2, 7, 3, 6, 4, 5, 10, 13]

    @ascending = AnswerService.question1(@array, ascending: true)
    @descending = AnswerService.question1(@array, ascending: false)
  end

  def question2
    @array_1 = [3, 4, 6, 3, 7, 8, 5, 9]
    @array_2 = [5, 4, 1, 2, 3]

    @result = AnswerService.question2(@array_1, @array_2)
  end

  def question3
    @string = 'abfgcdabcdabcdabcdeabcdcbaf'

    @result = AnswerService.question3(@string)
  end

  def question4
    @string = 'zyabcdabcac'

    @ascending = AnswerService.question4(@string, column: 1, ascending: true)
    @descending = AnswerService.question4(@string, column: 1, ascending: false)
  end

  def question5
    CustomLogger.info("Info message from custom logger")
    CustomLogger.warn("Warning message from custom logger")
    CustomLogger.error("Error message from custom logger")
  end
end
