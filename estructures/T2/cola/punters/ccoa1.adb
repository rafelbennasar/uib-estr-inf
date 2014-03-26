with ada.text_io; use ada.text_io;
with ccoa;

procedure ccoa1 is
		package stack is new ccoa(element => character);
		use stack;
		ecoa: coa;
		c: character:= 'a';
begin

		put(c);

		cbuida(ecoa);

		posa(ecoa, 'z');
		posa(ecoa, 'x');
		posa(ecoa, 'y');

		for i in 1..3 loop
				c:= primer(ecoa);
				--(epila);
				put(c);
		end loop;

end ccoa1;
