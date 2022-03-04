function bhrigs_parse(html = "") {
	var _length			= string_length(html);
	var _inTag			= false;
	
	// Itterate through the entire document
	for(var _currentChar = 0; _currentChar < _length; _currentChar++) {
		// is a new tag starting
		if (string_char_at(html, _currentChar) == "<") {
			
			_tagOutput = "";
			// read the entire tag
			while(_currentChar < _length && string_char_at(html, _currentChar) != ">") {
				_tagOutput += string_char_at(html, _currentChar);
			}
			
			show_debug_message(_tagOutput);
			
		}
	}
	
	
}