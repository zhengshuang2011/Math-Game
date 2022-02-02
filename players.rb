class Players 
  def initialize(name)
    @name = name
    @lives = 3
  end
  attr_accessor  :name, :lives

  def dead?
    @lives == 0
  end

  def question
    new_question = Questions.new
    new_question.ask_question(name)
    print ">"
    answer = gets.chomp
    if new_question.check_result?(answer)
      puts "#{name}: YES! You are correct."
    else 
      puts "#{name}: Seriously? No!"
      @lives -= 1
    end
  end
end