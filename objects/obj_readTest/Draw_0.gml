draw_set_color(c_black);

for(i = 0; i < array_length(doc); i++) {

	switch(doc[i].element) {
		case "title":
			window_set_caption(doc[i].content);
			break;
		case "h1":
			draw_set_font(fntH1);
			_cont = doc[i].content;
			_cont = get_text_wrap(_cont, __bhrigs_width - bodyMargin);
			draw_text(0 + bodyMargin, currentDrawY + bodyMargin, _cont);
			currentDrawY += string_height(_cont) + (bodyMargin*2);
			break;
		case "p":
			draw_set_font(fntParagraph);
			_cont = doc[i].content;
			_cont = get_text_wrap(_cont, __bhrigs_width - bodyMargin);
			draw_text(0 + bodyMargin, currentDrawY + bodyMargin, _cont);
			currentDrawY += string_height(_cont) + (bodyMargin*2);
			break;
	}
	
}
currentDrawY	= 0;