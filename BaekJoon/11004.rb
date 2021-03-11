# https://www.acmicpc.net/problem/11004
# K번째 수
# sort 함수 사옹 2751번과 비슷 

n, k = gets.split.map(&:to_i)

arr =[]

n.times do 
	arr.push(gets.to_i)
end

sorted_arr = arr.sort

puts sorted_arr[k-1]
