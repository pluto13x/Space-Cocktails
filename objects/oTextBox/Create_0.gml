//the textbox
margin = 4;
marginArrow = margin + 8; //margina sa strane gde je strelica ko priča
lineSeparation = 6; //između linija teksta
lineWidth = bbox_top - margin - marginArrow; //širina teksta

//the text
page = 0;
pageNumber = 0;
text[0] = "";
textLength[0] = string_length(text[0]);
drawChar = 0;
drawSpeed = 1;

setup = false;