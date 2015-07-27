=begin

Write code in the count method below, such that I can say...

Transform.new.count

...and counts for the words located in the file input_files/transform2.txt
will be output. (See spec/test_0001_spec.rb to see the exact output)

=end 



class Transform2

  def initialize
    @file = File.open('../input_files/transform2.txt') # this is what is breaking your tests
    # see how I did it in my test -- Dir.glob(File.join(File.dirname(__FILE__) .... 
    # you need to open this file in such a way that 1) tests pass, and 2) I can call
    # Transform2.new.count from the console, or from tests, and it works
  end
  
  def count
    name_hash = Hash.new(0) # nice +1
    @file.each { |name| name_hash[name.chomp] += 1}
    p name_hash # don't print out your hash, just return it
  end
end


