def my_collect (array)
  
  i = 0
  
  collection = []
  while  i < array.length
    collection[i] = yield array[i]
    i += 1
  end
  
  return collection
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

my_collect(['ruby', 'javascript', 'python', 'objective-c']) {|language| language.upcase}
  
