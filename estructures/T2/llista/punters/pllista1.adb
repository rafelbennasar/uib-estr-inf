with ada.text_io; use ada.text_io;
with pllista;

procedure pllista1 is
		package llista is new pllista(element => character);
		use llista;
		ellista: pbloc;
		c: character:= 'a';
begin

		put(c);

		llistabuida(ellista);

		inserir(ellista, 'z');
		inserir(ellista, 'x');
		inserir(ellista, 'y');

		recorregut(ellista);

end pllista1;
