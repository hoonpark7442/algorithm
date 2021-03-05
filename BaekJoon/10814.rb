# https://www.acmicpc.net/problem/10814
# 나이순정렬

n = gets.to_i

array=[]

for _ in 0...n
	data = gets.split
	data[0] = data[0].to_i
	array.push(data)
end

sorted_arr = array.sort_by{|el| el[0].to_i}

p sorted_arr
