require_relative 'node'

class LinkedStack
  def initialize
    @first = Node.new
  end

  def push(item)
    old_first = @first
    @first = Node.new
    @first.item = item
    @first.next = old_first
  end

  def pop
    item = @first.item
    @first = @first.next
    item
  end

  # Is the stack empty?
  def is_empty?
    @first == nil
  end
end
