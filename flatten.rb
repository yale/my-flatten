# Array#my_flatten
# Author: Yale Spector
#
class Array
  def deep_push(x)
    unless x.class == Array 
      self << x
    else 
      x.each {|e| deep_push(e)} 
    end
    self
  end

  def my_flatten
    [].deep_push(self)
  end
end
