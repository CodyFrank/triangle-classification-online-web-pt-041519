class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize (num1, num2, num3)
    @side_one = num1
    @side_two = num2
    @side_three = num3
  end

  def kind
  end
end
