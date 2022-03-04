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