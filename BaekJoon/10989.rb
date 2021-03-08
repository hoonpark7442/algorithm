# https://www.acmicpc.net/problem/10989
# 수 정렬하기
# 첫째 줄에 수의 개수 N(1 ≤ N ≤ 10,000,000)이 주어진다. 둘째 줄부터 N개의 줄에는 숫자가 주어진다. 이 수는 10,000보다 작거나 같은 자연수이다.

# n = gets.to_i

# arr = Array.new()
# arr = [0] * 10001

# for i in 0...n
# 	idx = gets.to_i
# 	# arr[idx] = 0 if arr[idx].nil?
# 	arr[idx] += 1
# end

# arr.each_with_index do |a, i|
# 	# next if a.nil?
# 	next if a == 0

# 	for j in 0...a
# 		puts i
# 	end
# end

# $< 이건 아마 파일객체 불러오는 걸거다. 백준에 제출할 때 파일 형태로 들어온 입력값을 iterate하는가보다. 굳이 gets로 입력안받으니 훨씬 빠른것이다. 
n = gets.chomp.to_i
a=[b=0]*10
$<.each_with_index{|v, i|  
  a[v.to_i]+=1
  break if i==n-1
}
a.map{|i|p *[b]*i;b+=1}
# a.map do |i|
# 	puts "-------"
# 	p *[b]*i
# 	puts "-------"
# 	# p *[b]*i
# 	b+=1
# end