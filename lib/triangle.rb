class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize (num1, num2, num3)
    @side_one = num1
    @side_two = num2
    @side_three = num3
  end

  def equilateral?
    if @side_one == @side_two && @side_three
      true
    else
      false
    end
  end

  def isosceles?
    if @side_one == @side_two || @side_three
      true
    else
      false
    end
  end

  def scalene?
    if @side_one != @side_two || @side_three
      if @side_two != @side_three
        true
      end
    else
      false
    end
  end

  def valid?
    if @side_one + @side_two > @side_three && @side_three + @side_one > @side_two
      true
    else
      false
    end
  end

  def kind
    if scalene?
      :scalene
    elsif isosceles?
      :isosceles
    elsif equilateral?
      :equilateral
    end
  end
end
