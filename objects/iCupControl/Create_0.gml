
makeCup = true; //služi da napravi (održi) čašu na mixing station stolu 
trayEmpty = true;				//ako odemo u drugu sobu i vratimo se
cupExists = true; //true doklegod u NEKOJ sobi postoji čaša

defaultx = 576;
defaulty = 576;
liquidColor = c_white; //boja tečnosti u čaši

drinkListDone = true; 
//kad se sve flaše stave u sobu, drinkList je gotov
//pa kad se stvore opet tokom menjanja soba, ne trebaju opet da se dodaju

howMuchOfDrink = array_create(ds_list_size(drinkList), 0);
 //index pića ima value koliko ml tog pića ima u čaši
 
 
 
 
 
 
/*
		OBJAŠNJENJE KONTROLE ČAŠE TOKOM MENJANJA SOBE
 
VAN TACNE

u iCupControl create-u makeCup = true, što u stepu pravi čašu na default poziciji. 
Čaša se pravi na default poziciji svaki put kad je makeCup == true. 

makeCup opet postaje true kad prelazimo iz bara u mixing (oButtonMixing), 
trayEmpty == true i cupExists == true. Dakle makeCup služi da bi se 
spawnovala čaša u mixingroomu ako odemo u drugu sobu, i to samo jednom. 
cupExists je true doklegod u nekoj sobi postoji čaša


NA TACNI

tacna se posebno kreira u svakoj sobi, pa u create eventu prosto napravi
na sebi novu instancu čaše ako je trayEmpty == false
*/

 

