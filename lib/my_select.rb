require 'pry'

def my_select(array)
  i = 0
  new_array = []
  while i < array.length
    if yield(array[i]) === true
      new_array << yield(array[i])
    end
    i = i + 1
  end
  
  new_array
end

my_collect(array) do |name|
  name.capitalize
end

