require_relative 'selection'

# Initialize an array with random integers
data = []
10.times {data << Random.new.rand(1..10)}
selection = Selection.new
sorted_array = selection.sort(data)
puts sorted_array
