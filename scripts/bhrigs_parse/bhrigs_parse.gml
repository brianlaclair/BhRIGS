function bhrigs_parse(html = "") {
	var _length			= string_length(html);
	var _inTag			= false;
	var _currentTag		= "";
	var _docStructure	= [];
	
	var _newLineStr		= @"
";
	
	// Some pre-parsing processing
	html = string_replace_all(html, "\n", " ");
	html = string_replace_all(html, "\r", " ");
	html = string_replace_all(html, _newLineStr, "");
	
	// Itterate through the entire document
	for(var _currentChar = 1; _currentChar < _length; _currentChar++) {
		
		// is a new tag starting!
		if (string_char_at(html, _currentChar) == "<") {
			
			if (!_inTag) {
				
				_inTag = true;
			
				_currentChar++; // Jump to the next character, as we know we have a tag and don't need the <
			
				var _tagOutput = "";
				
				// read the entire tag
				while(_currentChar < _length && string_char_at(html, _currentChar) != ">") {
					_tagOutput += string_char_at(html, _currentChar);
					_currentChar++;
				}
				
				_currentChar++;
				
				_tagOutput = string_lower(_tagOutput);
				
				// read until space or end of output
				var _i		= 1;
				var _pTag	= "";
				while(string_char_at(_tagOutput, _i) != " " && _i <= string_length(_tagOutput)) {
					_pTag += string_char_at(_tagOutput, _i);
					_i++;
				}
				
				_currentTag = _pTag;
				
				array_push(_docStructure, { element: _pTag, content: "" });
				
				show_debug_message(_pTag);
				
			} else {
				// Find out if we're closing our currently open tag - otherwise, for now, ignore.
				_currentChar++; // Jump to the next character, as we know we have a tag and don't need the <
			
				var _tagOutput = "";
				
				// read the entire tag
				while(_currentChar < _length && string_char_at(html, _currentChar) != ">") {
					_tagOutput += string_char_at(html, _currentChar);
					_currentChar++;
				}
				_currentChar++;
				
				_tagOutput = string_lower(_tagOutput);
				
				// read until space or end of output
				var _i		= 1;
				var _pTag	= "";
				while(string_char_at(_tagOutput, _i) != " " && _i <= string_length(_tagOutput)) {
					_pTag += string_char_at(_tagOutput, _i);
					_i++;
				}
				
				if (string_replace(_pTag, "/", "") == _currentTag && string_char_at(_pTag, 1) == "/") {
					_inTag = false;
				}
			}
		}
		
		if (_inTag) {
			_docStructure[array_length(_docStructure)-1].content += string_char_at(html, _currentChar);
		}
	}
	
	return _docStructure;
	
}