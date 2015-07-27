=begin
  
  # write code such that I can say

  m = MetaProgram.new(h)

  where h = {"this" => "that", "that" => "other", "where" => "here"}

  and m.this == "this", 

  m.that == "other", 

  m.where == "here"

=end
=begin 
# Write a class that takes a hash. When the names of the keys are called on an instance of this class as methods,
the return value should be the value of that key in the hash.
=end
class MetaProgram
  def initialize(h)
    @h = h
  end

 def method_missing
 end
end
