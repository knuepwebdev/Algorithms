require_relative 'outputter'

class ImprovedQuickUnion
  def initialize(number_of_objects)
    @ids = []
    @tree_size = []
    number_of_objects.times do|index|
      @ids[index] = index
      @tree_size[index] = 0
    end
  end

  def union(p, q)
    # Put the smaller tree below the larger tree
    puts "#{p}'s root: #{root(p)}"
    puts "#{q}'s root: #{root(q)}"
    puts "Tree size of #{p}'s root: #{@tree_size[root(p)]}"
    puts "Tree size of #{q}'s root: #{@tree_size[root(q)]}"
    if (@tree_size[root(p)] < @tree_size[root(q)])
      @ids[root(p)] = root(q)
      @tree_size[root(q)] += @tree_size[root(p)]
    else
      @ids[root(q)] = root(p)
      @tree_size[root(p)] += @tree_size[root(q)]
    end
  end

  def root(object)  
    while (object != @ids[object]) do
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
