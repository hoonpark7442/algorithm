puts "insert 8 number divided by space"
num_arr = gets.chomp.split(' ')

new_num = num_arr.map{|str| str.to_i}

asc = true
desc = true

for i in 1..7
	if new_num[i] > new_num[i-1]
		desc = false
	elsif new_num[i] < new_num[i-1]
		asc = false
	end
end

if asc 
	puts "ascending"
elsif desc
	puts "descending"
else
	puts "mixed"
end