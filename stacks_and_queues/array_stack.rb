class ArrayStack
  def initialize
    @strings = []
  end

  def pop
    @strings.pop
  end

  def push(string)
    @strings << string
  end

  def empty?
    @strings.count > 0
  end

  def strings
    @strings
  end
end
