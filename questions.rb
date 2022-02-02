class Questions 
  def initialize 
    @num1 = rand(1..20)
    @num2 = rand(1..20) 
    @sum = @num1 + @num2
  end

  def ask_question(name)
    puts "#{name}: What does #{@num1} plus #{@num2}"
  end

  def check_result?(input)
      @sum == input.to_i
  end
end
