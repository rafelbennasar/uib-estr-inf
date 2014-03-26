with ada.text_io; use ada.text_io;
package body cpila is

	a: mem;
	lliure: index;

	procedure pbuida(p: out index) is
	begin
		p := 0;
	end pbuida;

	procedure empila(p: in out pila; e: in element) is
			  q: pila;
	begin
		q := lliure;
		lliure:= a(lliure).s;
		a(q).e := e;
		a(q).s := p;
		p := q;
   end empila;

   procedure desempila(p: in out pila) is
			  q: pila;
   begin
		  q := p;
		  p := a(q).s;
		  a(q).s := 0; -- lliure!
		  lliure := q;
   end desempila;

   function cim (p: in pila) return element is
   begin
         return a(p).e;
   end cim;

   function esbuida(p: in pila) return boolean is
   begin
	   return (p = 0);
   end esbuida;
   k: index:= index(0);
begin

--	for i in index(1)..index(50) loop
--		put(integer'image(integer(i)));
--		if i < index'last then
		while (k < index(30)) loop
			a(k).s := k + index(1); -- succesor
			k := k + index(1);
		end loop;
--		else
--			a(i).s := 0;
--		end if;
end cpila;
