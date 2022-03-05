bhrigs_init();

__bhrigs_debug = false;

function bhrigs_init() {
	
	globalvar __bhrigs_width, __bhrigs_height, __bhrigs_debug, __bhrigs_title, __bhrigs_document_list, __bhrigs_known_tags;
	
	__bhrigs_width			= 0;
	__bhrigs_height			= 0;
	__bhrigs_debug			= false;
	__bhrigs_title			= "";
	__bhrigs_document_list	= [];
	__bhrigs_known_tags		= ["title", "h1", "p", "em"];
	
}