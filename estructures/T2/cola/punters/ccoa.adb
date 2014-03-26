with ada.text_io; use ada.text_io;
package body ccoa is

	procedure cbuida(p: out coa) is
	begin
		p.p := null;
		p.q := null;
	end cbuida;

	procedure posa(p: in out coa; e: in element) is
		r: pbloc;
	begin
		r:= new bloc;
		r.all.e:= e;
		if (p.p=null) then
			p.p:= r; p.q:= r; r.all.s:= null;
		else
			p.p.all.s:= r;
			r.all.s:= null;
			p.p:= r;
		end if;
	end posa;

   function primer(p: in coa) return element is
   begin
         return p.q.all.e;
   end primer;

   function esbuida(p: in coa) return boolean is
   begin
	   return (p.q = null);
   end esbuida;

end ccoa;
