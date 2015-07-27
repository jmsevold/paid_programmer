require 'byebug'
# you don't need to assign this expression to the @files instance variable
@files = Dir.glob(File.join(File.dirname(__FILE__), "../programming_tests/0001/*")).map{|f| require(f)}