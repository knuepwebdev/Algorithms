class LinkedQueueOfStrings
  def initialize
    @first = nil
    @last = nil
  end

  # Insert a Node onto the back of the queue
  def enqueue(item)
    if (empty?)
      @first = Node.new(item)
      @last = @first
    else
      previous_last = @last
      @last = Node.new(item)
      previous_last.next = @last
    end
  end

  # Remove a Node from the front of the queue
  def dequeue
    previous_first = @first
    @first = @first.next
    previous_first.item
  end

  # Is the queue empty?
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
