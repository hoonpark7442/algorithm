# puts "insert number of cards and maximum number. please divide by space"

# while true
# 	num_arr = gets.chomp.split(' ').map{|num| num.to_i}
# 	if num_arr.length > 2
# 		puts "please insert only 2 nums"
# 	else
# 		break
# 	end
# end

# number_of_cards, max_num = num_arr

# puts "insert #{number_of_cards} data. please divide by space"


# while true
# 	data_arr = gets.chomp.split(' ').map{|num| num.to_i}
# 	if data_arr.length == number_of_cards
# 		break
# 	else
# 		puts "please insert #{number_of_cards} data correctly"
# 	end
# end

number_of_cards, max_num = gets.chomp.split(' ').map{|num| num.to_i}
data_arr = gets.chomp.split(' ').map{|num| num.to_i}
result = 0

for i in 0..data_arr.length-1
	for j in i+1..data_arr.length-1
		for k in j+1..data_arr.length-1
			sum = data_arr[i] + data_arr[j] + data_arr[k]
			if sum <= max_num
				result = [result, sum].max
			end
		end
	end
end

puts result

# pjshwa code

# n, m = gets.split(' ').map(&:to_i)
# cards = gets.split(' ').map(&:to_i)
# cards.sort!
# cards.reject! {|c| c > m}

# def find_max(arr, limit)
#   i = 0
#   j = arr.size - 1
#   max_value = 0

#   while i < j
#     if arr[i] + arr[j] <= limit
#       max_value = [max_value, arr[i] + arr[j]].max
#       i += 1
#     else
#       j -= 1
#     end
#   end

#   max_value
# end

# i = cards.size - 1
# results = i.downto(2).map do |idx|
#   cur_num = cards[idx]
#   cur_num + find_max(cards[0...idx] + cards[idx + 1..-1], m - cur_num)
# end
# puts results.max


# sait2000 code

# c=->{gets.split.map &:to_i}
# n,m=c[];p c[].combination(3).map{|v|(m<v=v.sum)?0:v}.max
