def valid_isbn?(isbn_number)
	remove_dashes_spaces(isbn_number)
	non_numerical_characters(isbn_number)
	check_sum_x(isbn_number)
	length_of_isbn(isbn_number)
end

def length_of_isbn(isbn_number)
	if isbn_number.length == 10 || isbn_number.length == 13
		true
	else
		false
	end
end

def remove_dashes_spaces(isbn_number)
		isbn_number.delete! ("-")
		isbn_number.delete! (" ")
		 	# exclamation point (!) makes perminent
end

def non_numerical_characters(isbn_number)
			#indicates characters position, if none (nil)
	if isbn_number =~/\D/
		false
	end
end

def isbn_array(isbn_number)
			 #splits each number into its own array
	isbn_array = isbn_number.split(//,)
end

def check_sum_x(isbn_number)
	isbn_array = isbn_number.split(//,)
	if isbn_number.include?("x") or isbn_number.include?("X")
			#lower or uppercase
		isbn_number[9] == 10
		true
	else 
		false
	end
end
			#question marks (?) are for the B word. lol stating a true or false statement

def valid_check_digit_10(isbn_number)
	array = []
	isbn_number.each do |value|
		array.push value.to_i
	end
	sum = 0
	array.each.with_index do |value, index|
		break if index == 9
				# break = rescue statement, takes you out of a loop
		sum += value * (index + 1)
				#taking the index position times the number in that index
	end
	check_digit = sum % 11
	if check_digit == array[9]
		true
	else
		false
	end
	check_digit == array[9]

end