with ada.text_io; use ada.text_io;
package body pllista is
	primer: pbloc;

	function propietat(z: in pbloc) return boolean is
	begin
		return true;
	end propietat;

	procedure visita(z: in pbloc) is
	begin
		put(string(z.all.e));
	end visita;

   procedure llistabuida(p: out pbloc) is
   begin
	   p:= null;
   end llistabuida;

   procedure recorregut(primer: in pbloc) is
	   p: pbloc:= primer;
   begin
	while p /= null loop
		visita(p);
		p:= p.all.s;
	end loop;
   end recorregut;

   procedure inserir(primer: in out pbloc; e: in element) is
	   p: pbloc:= primer;
	   q: pbloc;
   begin
	   while (p /= null) and then not(propietat(p)) loop
		   p:= p.all.s;
	   end loop;
	   if (p = null) then
		   q:= new bloc;
		   q.all.e:= e;
		   q.all.s:= primer;
		   primer:= q;
	   else
		   q:= new bloc;
		   q.all.e:= e;
		   q.all.s:= p.all.s;
		   p.all.s:= q;
	   end if;

   end inserir;

   function cerca(primer: in pbloc) return element is
		   p: pbloc:= primer;
   begin
	while (p /= null) and then propietat(p) loop
	   p:= p.all.s;
	end loop;
	if (p /= null) then  
		return p.all.e; -- trobat!
	else
		return p.all.e; -- no trobat!
	end if;
   end cerca;




end pllista;
