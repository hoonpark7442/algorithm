# https://www.acmicpc.net/problem/2751
# 수 정렬하기2
# 고급 정렬 알고리즘 - 병합정렬
# 이것도 루비 병합정렬 알고리즘으로는 안됨

# def merge_sort(arr)
# 	return arr if arr.length <= 1
# 	puts "arr #{arr}"
# 	medium = arr.length/2

# 	left = merge_sort(arr[0..(medium-1)])
# 	right = merge_sort(arr[medium..(arr.length-1)])

# 	merged=[]
# 	l_point, r_point = 0, 0

# 	while left.length > l_point && right.length > r_point do
# 		if left[l_point] > right[r_point]
# 			merged << right[r_point]
# 			r_point += 1
# 		else
# 			merged << left[l_point]
# 			l_point += 1
# 		end
# 	end

# 	while left.length > l_point do 
# 		merged << left[l_point]
# 		l_point += 1
# 	end

# 	while right.length > r_point do
# 		merged << right[r_point]
# 		r_point += 1
# 	end

# 	return merged
# end


# n = gets.to_i

# arr =[]

# n.times do 
# 	arr.push(gets.to_i)
# end

# result = merge_sort(arr)

# puts result



n = gets.to_i

arr =[]

n.times do 
	arr.push(gets.to_i)
end

puts arr.sort


