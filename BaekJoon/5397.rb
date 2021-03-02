n = gets.to_i

for _ in 1..n
	left_stack = []
	right_stack = []

	
	pwd = gets.chomp

	pwd.each_char do |char|
		if char == "-"
			unless left_stack.empty?
				left_stack.pop
			end
		elsif char == "<" 
			unless left_stack.empty?
				right_stack.push(left_stack.pop)
			end
		elsif char == ">"
			unless right_stack.empty?
				left_stack.push(right_stack.pop)
			end
		else
			left_stack.push(char)
		end
  end

  full_pwd = (left_stack + right_stack.reverse).join()
  p full_pwd
end