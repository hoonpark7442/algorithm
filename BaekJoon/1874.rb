n = gets.to_i

count  = 1
stack  = []
result = []
no_message = true
for i in 1..n
	d = gets.to_i

	while count <= d
		stack.push(count)
		result.push('+')
		count += 1
	end

	if stack[-1] == d
		stack.pop
		result.push('-')
	else
		no_message = false
	end
end

if no_message == false
	puts "no"
else
	puts result.join("\n")
end