# https://www.acmicpc.net/problem/7490
# 0 만들기
# 이 문제도 루비로는 안풀림

@op_arr = []
def recursive(arr, n)
	if arr.length == n
		@op_arr.push(arr.dup)
	else
		arr.push('+')
		recursive(arr, n)
		arr.pop()

		arr.push('-')
		recursive(arr, n)
		arr.pop()

		arr.push(' ')
		recursive(arr, n)
		arr.pop()
	end
end

test_case = gets.to_i

for _ in 0...test_case
	arr=[]
	n = gets.to_i
	recursive(arr, n-1)

	num_arr = Array.new(n) { |i| i+1  }
	
	@op_arr.each do |op|
		str=""
		for i in 0...n-1
			str += num_arr[i].to_s + op[i]
		end
		str += num_arr[-1].to_s

		if eval(str.gsub(' ','')) == 0
			puts str
		end
		
	end
end
