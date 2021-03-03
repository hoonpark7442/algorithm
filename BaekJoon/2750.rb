# https://www.acmicpc.net/problem/2750
# 수 정렬하기
# 선택정렬

n = gets.to_i

data = gets.split.map(&:to_i)

for i in 0...data.length
	lowest = i
	for j in i+1...data.length
		if data[lowest] > data[j]
			lowest = j
		end
	end
	data[lowest], data[i] = data[i], data[lowest]
end

p data

