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
the return value should be the value of that key in the hash. I suspect this involves overriding method_missing, and taking
the method that is called, and looking up the value of the corresponding key in the hash that was passed in
=end
class MetaProgram
  def initialize(h)
    @h = h
  end

  def method_missing(method_name, *args, &block)  
    @h[method_name.to_s] 
  end 


  def respond_to_missing?(method_name, include_private = false)
    keys = @h.keys
    keys.include?(method_name.to_s) || super
  end 
end



