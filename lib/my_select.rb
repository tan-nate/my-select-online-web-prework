require 'pry'

def my_select(array)
  i = 0
  new_array = []
  while i < array.length
    new_array << yield(array[i])
    i = i + 1
  end
  
  new_array
end

my_collect(array) do |name|
  name.capitalize
end

