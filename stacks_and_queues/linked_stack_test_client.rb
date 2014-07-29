require_relative 'stack_of_strings'

stack_of_strings = StackOfStrings.new
input = gets.chomp

while(input != '') do
  if (input == '-')
    puts stack_of_strings.pop
  else
    stack_of_strings.push(input)
  end

  input = gets.chomp
end
