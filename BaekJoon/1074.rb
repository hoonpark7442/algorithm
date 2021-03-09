# https://www.acmicpc.net/problem/1074
# z문제

# 루비의 경우 이대로는 안풀림
$result = 0

def solve(n,x,y)
	if n == 2
		if x == X && y == Y
			puts $result
			return
		end
		$result += 1
		if x == X && y+1 == Y
			puts $result
			return
		end
		$result += 1
		if x+1 == X && y == Y
			puts $result
			return
		end
		$result += 1
		if x+1 == X && y+1 == Y
			puts $result
			return
		end
		$result += 1
		return
	end

	solve(n/2,x,y)
	solve(n/2,x,y+n/2)
	solve(n/2,x+n/2,y)
	solve(n/2,x+n/2,y+n/2)
end


n,X,Y = gets.chomp.split.map(&:to_i)
solve(2**n,0,0)


# require 'byebug'
# input = gets.chomp().split()

# # 2*2 -> 2^2*2^2 -> 2^3 * 2^3
# N = input[0].to_i
# r = input[1].to_i
# c = input[2].to_i


# # puts N, r, c
# =begin
# r에 대해서 2^n 으로 나눠가면 될거같은데
# 맵 4배 만큼 커짐
# =end
# ans = 0
# cnt = 0
# Z = [[0,1],[2,3]]
# byebug
# while !(r<=0 && c<=0)
		
# 		puts ans, r, c, cnt
# 		puts r&1, c&1, 1<<cnt
#     ans += Z[r&1][c&1]*(1<<cnt)
#     puts ans
#     r=r>>1;
#     puts r
#     c=c>>1;
#     puts c
#     cnt+=2;
#     puts cnt
# end

# puts ans