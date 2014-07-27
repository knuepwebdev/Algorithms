require_relative 'linked_stack'

linked_stack = LinkedStack.new
input = gets.chomp

while(input != '') do
  if (input == '-')
    puts linked_stack.pop
  else
    linked_stack.push(input)
  end

  input = gets.chomp
end
