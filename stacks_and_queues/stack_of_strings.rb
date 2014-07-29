class StackOfStrings
  def initialize
    @first = nil
  end

  def push(string)
    previous_first = @first
    @first = Node.new(string)
    @first.next = previous_first
  end

  def pop
    removed_item = @first.item
    @first = @first.next
    removed_item
  end

  # Is the stack empty?
  def empty?
    @first.nil?
  end

  class Node
    attr_accessor :next
    attr_reader :item

    def initialize(item)
      @item = item
      @next = nil
    end
  end
end
