# https://www.acmicpc.net/problem/11650
# 좌표 정렬하기

n = gets.to_i

array=[]

for _ in 0...n
	data = gets.split.map(&:to_i)
	array.push(data)
end

sorted_arr = array.sort

puts sorted_arr
