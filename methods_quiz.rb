  
# TODO - write has_teen?
def has_teen?(a, b, c)
	if a >= 13 && a <= 19 || b >= 13 && b <= 19 || c >= 13 && c <= 19
		return true
	end
	return false
end


# TODO - write not_string
def not_string(str)
	d_str = str.downcase()
	if d_str[0..2] == 'not'
		return str
	end
	return 'not'+str
end

# TODO - write icy_hot?
def icy_hot?(int_a, int_b)
	if int_a < 0 && int_b > 100
		return true
	end
	if  int_a > 100 && int_b < 0
		return true
	end
	return false
end

# TODO - write closer_to
def closer_to(guess, int_a, int_b)
	distance_a = (guess - int_a).abs
	distance_b = (guess - int_b).abs
	if distance_b == distance_a
		return 0
	end
	if distance_a > distance_b
		return int_b
	end
	return int_a
end

# TODO - write two_as_one?