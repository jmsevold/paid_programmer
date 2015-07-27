=begin

Write code in the count method below, such that I can say...

Transform.new.count

...and counts for the words located in the file input_files/transform2.txt
will be output. (See spec/test_0001_spec.rb to see the exact output)

=end 



class Transform2

  def initialize
    @file = File.open('../input_files/transform2.txt')
  end
  
  def count
    name_hash = Hash.new(0)
    @file.each { |name| name_hash[name.chomp] += 1}
    p name_hash 
  end
end


