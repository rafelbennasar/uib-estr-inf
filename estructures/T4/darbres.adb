package body darbres is

	procedure cbuit (c: out pnode) is
	begin
		c:= null;
	end cbuit;

	procedure posa (p: in out pnode; e: in element) is
	begin
		if p = null then 
		       	p:= new node; p.all.k:= e.k; p.all.d:= e.d; p.all.fe:= null; p.all.fd:= null;
		elsif p /= null then
				if (e.k < p.all.k) then posa(p.all.fe, e);
				elsif (e.k = p.all.k) then null;
				elsif (e.k > p.all.k) then posa(p.all.fd, e);
				end if;
		end if;
	end posa;



	procedure consulta (p: in pnode; k: in clau; d: out dades) is
	begin
		case p is
			when null => null; -- l'element no existeix!
			when not null => 
				if (k < p.all.k) then consulta(p.all.fe, k, d);
				elsif (k = p.all.k) then d:= p.all.d;
				elsif (k > p.all.k) then consulta(p.all.fd, k, d);
				end if;
		end case;
	end consulta;

	procedure elimina (c: in out pnode; k: in clau) is
	begin
		null;
	end elimina;

	procedure segregamenor (c: in out pnode; k: in clau) is
	begin
		null;
	end segregamenor;


end darbres;

