with Ada.text_io;
use Ada.text_io;

package body pbinsort is

	function nobuida(l: in llista) return boolean is
	begin
		return (l.i /= null);
	end nobuida;

	procedure lposa(l : in out llista; e : in element) is
		q: pbloc:= new bloc;
	begin
		q.all.e := e;		
		q.all.s := null;

		if nobuida(l) then 	
			l.f.all.s := q;
		else
			l.i := q; 
		end if;
		l.f := q;
	end lposa;

	procedure imprimeix(l : in llista) is
		q : pbloc;
	begin
		q := l.i;
		while q /= null loop
			for i in 1..q.all.e'length loop
					put(q.all.e(i));
			end loop;
			new_line;
			q := q.all.s;
		end loop;
	end imprimeix;

	procedure distribuir(b : out paraules; l : in llista; i : in integer) is
		q : pbloc;
	begin
		q := l.i;

		for c in cars loop		
			b(c).i := null;
			b(c).f := null;
		end loop;

		while q /= null loop	
			lposa(b(q.e(i)), q.e);
			q := q.all.s;
		end loop;
	end distribuir;

	procedure concatenar(b : in paraules; l : out llista) is
	begin
		l.i:= null;
		l.f:= null;
		
		for c in cars loop
			if nobuida(b(c)) then
				if l.i = null then
					l.i := b(c).i;
				else
					l.f.all.s := b(c).i;
				end if;

				l.f := b(c).f;
			end if;
		end loop;
	end concatenar;

	procedure ordena(l : in out llista) is
		bs : paraules;
	begin
		for i in reverse 1..max loop
			distribuir(bs, l, i);
			concatenar(bs, l);
		end loop;
	end ordena;


end pbinsort;
