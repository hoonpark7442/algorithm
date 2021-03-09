# https://www.acmicpc.net/problem/2747
# 피보나치

# require 'byebug'

# def fib(n)
# 	byebug
# 	puts n
# 	if n == 0
# 		return 0
# 	end
# 	if n == 1
# 		return 1
# 	end

# 	return fib(n-1) + fib(n-2)
# end

# result = fib(gets.to_i)

# p result

def fib(n)
	n += 1
	cache = [0]*n
	cache[0] = 0
	cache[1] = 1
	for i in 2...n
		cache[i] = cache[i-1] + cache[i-2]
	end

	puts cache[n-1]
end

fib(gets.to_i)