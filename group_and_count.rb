def group_and_count(input)
  input.each_with_object(Hash.new(0)) { |e, a| a[e] += 1 } if input != []  && input != nil
end



# Your goal is to write the group_and_count method, which should receive and array as unique parameter and return a hash. Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the array, and as values the counting of each value.

# Example usage:

# input = [1,1,2,2,2,3]

# group_and_count(input)# == {1=>2, 2=>3, 3=>1}
# The following methods were disabled:

# Array#count
# Array#length