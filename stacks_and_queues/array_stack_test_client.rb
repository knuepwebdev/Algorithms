require_relative 'array_stack'

array_stack = ArrayStack.new
input = gets.chomp

while(input != '') do
  if (input == '-')
    puts array_stack.pop
  else
    array_stack.push(input)
  end

  input = gets.chomp
end
