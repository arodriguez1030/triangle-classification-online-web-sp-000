require 'pry'

class Triangle
  attr_accessor :left, :right, :middle, :kind

  def initialize (left, right, middle)
    @left = left
    @right = right
    @middle = middle
  end
    
  
  def kind
    if @left + @right <= @middle || @middle = @left <= @right || @right + @middle <= @left || @left * @middle * @right == 0
      raise TriangleError
    elsif @left == @middle && @left == @right
    self.kind = :equilateral
    elsif @left == @middle || @left == @right || @right == @middle
    self.kind = :isoceles
  else
    self.kind = :scalene
        end
  end
  
  class TriangleError < StandardError
  
  end
end
