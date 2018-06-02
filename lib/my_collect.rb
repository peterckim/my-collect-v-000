def my_collect(array)
  count = 0
  output = []
  while count < array.length
    output << yield(array[count])
    count += 1
  end
  output
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]

my_collect(array) do |name|
  name.split(" ").first
end

# collection = ["ruby", "javascript", "python", "objective-c"]

# my_collect(collection) do |lang|
#   lang.upcase
# end