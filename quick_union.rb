require_relative 'outputter'

class QuickUnion
  def initialize(number_of_objects)
    @ids = []
    number_of_objects.times {|index| @ids[index] = index}
  end

  def union(p, q)
    #Set the id of p's root to the id of q's root
    @ids[root(p)] = root(q)
  end

  def root(object)  
    while (@ids[object] != object) do
      object = @ids[object]
    end

    object
  end

  def connected?(p, q)
    root(p) == root(q)
  end

  def print_data
    outputter = Outputter.new(@ids)
    outputter.print_data
  end
end
