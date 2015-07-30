=begin
Take this array:

a = [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]

 and transform it into this array

[[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 0, 0]]

#[1,2,3,4,5,6,7,8,9,10]


at every third
=end

a = [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]

def group_in_threes(arr)
  result = []
  
  arr = arr.flatten

 
  until arr.empty?
    result.push(arr.slice!(0..2))
  end
 pad_with_zeros(result)
end


def pad_with_zeros(list)
  list.each do |arr|
    if arr.size < 3
      until arr.count == 3
        arr << 0
      end
    end
  end
  list
end

 p group_in_threes(a)
