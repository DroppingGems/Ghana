class Question

  attr_accessor :prompt, :answer
  def initialize (prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

  p1 = "What color are apples?\n(a)red\n(b)blue\n(c)black"
  p2 = "What color are bananas?\n(a)pink\n(b)yellow\n(c)white"
  p3 = "What color are avocados?\n(a)orange\n(b)purple\n(c)green"

  questions = [
    Question.new(p1, "a"),
    Question.new(p2, "b"),
    Question.new(p3, "c")
  ]

  # def self.questions = {"p1" => "a", "p2" => "b", "p3" => "c"}

  def run_test(questions)
    answer = ""
    score = 0
    for question in questions
      puts question.prompt
      answer = gets.chomp()
         if answer == question.answer
           score += 1
         end
    end
    puts ("You got " + score.to_s + " / " + questions.length().to_s)
  end

run_test(questions)
