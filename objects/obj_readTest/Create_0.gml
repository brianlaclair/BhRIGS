// Some basic styling that will be outsourced later
bodyMargin		= 8;
currentDrawY	= 0;


// Read the file
_str	= "";
_file	= file_text_open_read("milestone1.html");

while(!file_text_eof(_file)) {
	_str += file_text_readln(_file);
}
file_text_close(_file);


show_debug_message(_str);

doc = bhrigs_parse(_str);