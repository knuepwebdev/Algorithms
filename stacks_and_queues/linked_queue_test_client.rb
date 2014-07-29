require_relative 'linked_queue_of_strings'

linked_queue_of_strings = LinkedQueueOfStrings.new
input = gets.chomp

while(input != '') do
  if (input == '-')
    puts linked_queue_of_strings.dequeue
  else
    linked_queue_of_strings.enqueue(input)
  end

  input = gets.chomp
end
