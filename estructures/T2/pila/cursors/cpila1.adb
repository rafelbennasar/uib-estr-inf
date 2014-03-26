with ada.text_io; use ada.text_io;
with cpila;

procedure cpila1 is
		package stack is new cpila(element => character);
		use stack;
		epila: pila;
		c: character:= 'a';
begin

		put(c);

		pbuida(epila);

		empila(epila, 'z');
		empila(epila, 'x');
		empila(epila, 'y');

		for i in 1..3 loop
				c:= cim(epila);
				desempila(epila);
				put(c);
		end loop;

end cpila1;
