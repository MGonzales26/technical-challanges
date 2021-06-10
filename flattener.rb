
array_of_ints = [1, 2, 3, [[4], 5], [[[6]]]]
array_of_strings = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]]

def flattener(arr, new_arr = [])
  if arr.is_a? Array
    arr.each do |e|
      if e.is_a? Array
        e.each do |se|
          require 'pry'; binding.pry
          new_arr << flattener(se, new_arr)
        end
      else
        new_arr << flattener(e, new_arr)
      end
    else
      new_arr << e
    end
  end
  new_arr
end

flattener(array_of_ints)
flattener(array_of_strings)