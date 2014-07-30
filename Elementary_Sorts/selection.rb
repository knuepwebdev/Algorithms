class Selection
  def sort(data)
    data.each_index do |i|
      min = i

      (i...data.length).each do |j|
        if (less?(data[j], data[min]))
          min = j
        end
      end
      swap(data, i, min)
    end  #end outer each_index

    data
  end

  private
  def less?(v, w)
    v < w
  end

  def swap(array, i, j)
    big = array[i]
    array[i] = array[j]
    array[j] = big
  end
end
