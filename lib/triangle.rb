require 'pry'

class Triangle
  attr_accessor :left, :right, :middle, :equilateral
  def initialize (left, right, middle)
    @left = left
    @right = right
    @middle = middle
  end
    
  
  def kind
    if @left + @right <= @middle || @middle = @left <= @right || @right + @middle <= @left
      raise TriangleError
    elsif @left == 0 || 
        end
  end
  
  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides always exceeds the length of the third!"
    end
  end
end
