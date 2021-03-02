# https://www.acmicpc.net/problem/4195
# 친구 네트워크

def find(x)
	if x != @parent[x]
		@parent[x] = find(@parent[x])
	end
	return @parent[x]
end

def union(x,y)
	root_x = find(x)
	root_y = find(y)

	if root_x != root_y
		@parent[root_y] = root_x
		@num[root_x] += @num[root_y]
	end
	
end

test_cases = gets.to_i

for _ in 1..test_cases
	@parent = {}
	@num = {}

	f = gets.to_i

	for _ in 1..f
		x, y = gets.split.map(&:to_s)	

		# check keys
		@parent[x], @num[x] = x, 1 unless @parent.include? x
		@parent[y], @num[y] = y, 1 unless @parent.include? y

		union(x,y)
		p @num[find(x)]
	end
end
