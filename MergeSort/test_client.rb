require_relative 'merge_sort'

class SampleData
  include MergeSort

  def initialize(data)
    @data = data
  end

  def sort_data
    merge_sort(@data)
  end
end


data = []
10.times {data << Random.new.rand(1..10)}
sample_data = SampleData.new(data)
sorted_data = sample_data.sort_data
puts sorted_data.inspect
