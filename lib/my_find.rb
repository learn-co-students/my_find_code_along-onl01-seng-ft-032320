require 'pry'

collection = (1..100).to_a



def my_find(collection)
 i = 0 
 
 while collection.length > i 
  if yield(collection[i])
    return collection[i]
  end 
  i = i + 1
 end 
 
end



my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }

# want to return the value the is true not an array