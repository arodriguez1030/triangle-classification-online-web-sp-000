require 'pry'

class Triangle
  attr_accessor :left, :right, :middle, :equilateral
  def initialize (left, right, middle)
    @left = left
    @right = right
    @middle = middle
  end

def illegal
  if self.left <= 0 || self.middle <= 0 || self.right <= 0
    true
    elsif self.left + self.right < self.middle || self.right+ self.middle < self.left || self.middle + self.left < self.right
    true
  else
  false
end
end
    
  
  def kind
    if @left == @right && @right == @middle
        @equilateral = self
        end
  end
  
  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides always exceeds the length of the third!"
    end
  end
end
