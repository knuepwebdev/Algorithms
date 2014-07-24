require_relative 'outputter'

class QuickFind
  def initialize(number_of_elements)
    @id = []
    number_of_elements.times {|element| @id[element] = element}
  end

  def connected?(p, q)
    @id[p] == @id[q]
  end

  def union(p, q)
    id_to_update = @id[p]
    @id.each_index do |index|
      if @id[index] == id_to_update
        @id[index] = @id[q]
      end
    end
  end

  def print_data
    outputter = Outputter.new(@id)
    outputter.print_data
  end
end
