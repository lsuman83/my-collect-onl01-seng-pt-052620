def my_collect (collection)
  
  i = 0
  
  array = []
  
  while  i < collection.length
    array << yield (collection[i])
    i += 1
  end
  
  array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

my_collect(['ruby', 'javascript', 'python', 'objective-c']) {|language| language.upcase}
  
