
makeCup = true; //služi da napravi (održi) čašu na mixing station stolu 
trayEmpty = true;				//ako odemo u drugu sobu i vratimo se
cupExists = true; //true doklegod u NEKOJ sobi postoji čaša

defaultx = 120;
defaulty = 120;
liquidColor = c_white; //boja tečnosti u čaši

howMuchOfDrink = undefined;
 //index pića ima value koliko ml tog pića ima u čaši
 //puni se u iDrinkListDone
 
 
 
 
 
 
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

 

