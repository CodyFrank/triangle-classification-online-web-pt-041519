class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize (num1, num2, num3)
    @side_one = num1.to_f
    @side_two = num2.to_f
    @side_three = num3.to_f
  end

  def equilateral?
    if @side_one == @side_two && @side_three == @side_one
      true
    else
      false
    end
  end

  def isosceles?
    if @side_one == @side_two || @side_three == @side_one
      true
    else
      false
    end
  end

  def scalene?
    if @side_one != @side_two
      if @side_one != @side_three
        if @side_two != @side_three
          true
        end
      end
    else false
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
    if equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end
end
