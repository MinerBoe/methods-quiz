  
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

# TODO - write closer_to

# TODO - write two_as_one?