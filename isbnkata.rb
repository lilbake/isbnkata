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
		isbn_number[9] == 10
		true
	else 
		false
	end
end


