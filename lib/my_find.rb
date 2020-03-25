require 'pry'
#method
def my_find(collection)
  #counter
  i = 0
  #while loops through array
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end