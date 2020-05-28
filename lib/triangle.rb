require 'pry'

class Triangle
  attr_accessor :left, :right, :middle, :kind

  def initialize (left, right, middle)
    @left = left
    @right = right
    @middle = middle
  end
    
  
  def kind
    if (self.left + self.right) <= self.middle || (self.middle = self.left) <= self.right || (self.right + self.middle) <= self.left || (self.left * self.middle * self.right) == 0
      raise TriangleError
    elsif self.left == self.middle && self.left == self.right
    self.kind = :equilateral
    elsif self.left == self.middle || self.left == self.right || self.right == self.middle
    self.kind = :isoceles
  else
    self.kind = :scalene
        end
  end
  
  class TriangleError < StandardError
  
  end
end
