def my_collect (array)
  
  i = 0
  
  
  while  i < array.length
    yield array[i]
    i += 1
  end
  
  return array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

my_collect(['ruby', 'javascript', 'python', 'objective-c']) {|language| language.upcase}
  
