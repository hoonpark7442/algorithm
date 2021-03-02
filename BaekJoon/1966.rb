# require 'benchmark'
# queue = []
# n = 100000
# Benchmark.bm do |benchmark|
# 	benchmark.report("nomal") do
#     for i in 0..n
#     	queue.push(i)
#     end
#   end

#   benchmark.report("arrow") do
#     for i in 0..n
#     	queue << i
#     end
#   end
# end

#        user     system      total        real
# nomal  0.008908   0.000607   0.009515 (  0.009793)
# arrow  0.006780   0.000506   0.007286 (  0.007320)

# queue = []

# queue << 1
# queue << 2

# puts queue.shift()



puts "insert number of test case"
test_case = gets.to_i

for i in 1..test_case
	n, m = gets.split.map(&:to_i)
	queue = gets.split.map(&:to_i)
	check_list = Array.new(n, 0)
	check_list[m] = 1

	count = 0
	while true
		if queue[0] == queue.max
			count += 1

			if check_list[0] != 1
				queue.shift
				check_list.shift
			else
				puts count
				break
			end
		else
			queue.push(queue.shift)
			check_list.push(check_list.shift)
		end
	end
end

