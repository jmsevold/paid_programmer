=begin
Given the 2d array, concatenate all integers paired with a zero next to [0,nil], and
then do the same for 1. Notice how the final 1 array is paired only with a 7, since 
that is the only number it is paired with. The rest are letters

=end

# Take this array:

a = [[0, "b"], [1, 7], [0, "a"], [1, "e"], [0, 5], [1, "f"], [0, 6], [1, "f"], [0, "c"], [0, 9]] 

# and transform it into this array

[[0, 569], [1, 7]]


def array_transformer(array)
  zero_array   = [0,'']
  one_array    = [1,'']
  final_result = []

  array.each do |mini_array|
    target = mini_array[1]
    if mini_array[0] == 0 && target.class == Fixnum
      zero_array[1] += target.to_s

    elsif mini_array[0] == 1 && target.class == Fixnum
      one_array[1] += target.to_s  
    end
  end
  final_result.push(zero_array,one_array)
  final_result[0][1] = final_result[0][1].to_i
  final_result[1][1] = final_result[1][1].to_i
  final_result
end




p array_transformer(a)






