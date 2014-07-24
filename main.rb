require_relative 'quick_find'

algorithms = [QuickFind.new(10)]
algorithms.each do |algorithm|
  puts "**#{algorithm.class}**"
  algorithm.union(4, 3)
  algorithm.union(3, 8)
  algorithm.union(6, 5)
  algorithm.union(9, 4)
  algorithm.union(2, 1)
  algorithm.union(5, 6)
  algorithm.union(5, 0)
  algorithm.union(7, 2)
  algorithm.union(6, 1)
  algorithm.print_data 
  puts "Are 8 and 9 connected? #{algorithm.connected?(8, 9)}"
  puts "Are 1 and 5 connected? #{algorithm.connected?(1, 5)}"
end
