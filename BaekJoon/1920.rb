def binary(arr, val, low, high)
	if arr.length == 1 && arr[0] == val
		return true
	elsif arr.length == 1 && arr[0] != val
		return false
	elsif arr.empty? || (low > high)
		return false
	end
	
	medium = (low+high) / 2
	
	if arr[medium] == val
		return true
	else
		if arr[medium] > val
			binary(arr, val, low, medium-1)
		elsif arr[medium] < val
			binary(arr, val, medium+1, high)
		end
	end
end

n_num = gets.to_i
n_list = gets.split.map(&:to_i).sort
m_num = gets.to_i
m_list = gets.split.map(&:to_i)

m_list.each do |m|
	if binary(n_list, m, 0, n_num-1)
		puts 1
	else
		puts 0
	end
end

# craftydragon678 code
# gets
# m = gets.split.map(&:to_i).sort
# gets
# gets.split.map(&:to_i).map.each do |n|
#   if m.bsearch { |v| n <=> v }
#     puts 1
#   else
#     puts 0
#   end
# end

# dkrnfls code
# gets
# a = gets.split.sort
# gets
# puts gets.split.map{|i| i==a.bsearch{|j| j>=i} ? 1:0}