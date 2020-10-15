class Triangle
  attr_accessor :scalene, :equilateral, :isosceles, :sides
  
  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom
    @sides = [left, right, bottom].sort
  end

  def kind
    if invalid?
      begin
        raise TriangleError
       
        
      end
    elsif sides.uniq.size == 1
      :equilateral
    elsif sides.uniq.size == 2
      :isosceles
    elsif sides.uniq.size == 3
      :scalene 
    end
      
    

  end

  def invalid?
    (sides.any? {|side| side <= 0}) || (sides[0] + sides[1] <= sides[2]) || (sides.size != 3)
  end

  class TriangleError < StandardError
    def message
      puts "This is not a triangle, dammit!"
    end
  end
end
