with d_binsort; use d_binsort;
with ada.text_io; use ada.text_io;

procedure main is

begin

	crea("dades.dat");   
	put_line("Llista sense ordenar:");
	mostra("dades.dat", 1);
	ordena("dades.dat");
	put_line("Llista ordenada:");
	mostra("dades.dat", 2);

end main;
