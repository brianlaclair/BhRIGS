function in_array(needle, haystack) {

	if (is_array(haystack)) {
		for(var i = 0; i < array_length(haystack); i++) {
			if (needle == haystack[i]) {
				return true;
			}
		}
	}
	
	return false;

}

function get_text_wrap(str, width = __bhrigs_width, wholeword = false) {
	
	var output = "";
	str = string(str);
	
	for(var i = 1; i <= string_length(str); i++) {
		
		if (string_width(output + string_char_at(str, i)) >= width) {
			output += "\n";
		}
		
		output += string_char_at(str, i);
		
	}
		

	return output;
	
}