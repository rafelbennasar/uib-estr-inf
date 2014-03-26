with pbinsort, Ada.text_io;
use Ada.text_io;

procedure main is
	package ord is new pbinsort(10);
	use ord;

	l : llista;
begin

	lposa(l, "pau_mirall");
	lposa(l, "joan_canti");
	lposa(l, "manel_font");

	put_line("Llista desordenada : ");
	imprimeix(l);	

	ordena(l);
	new_line(1);	

	put_line("Llista ordenada : ");
	imprimeix(l);
end main;
