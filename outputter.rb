class Outputter
  def initialize(array)
    @array = array
  end

  def print_data
    @array.each {|object| puts object}
  end
end