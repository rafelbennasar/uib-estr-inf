package dllista is

	procedure cbuit (c: out conjunt) is
	begin
		c: null;
	end cbuit;

	procedure posa (c: in out conjunt; x: in element) is
		p: conjunt:= c;
		pp: conjunt:= null;
	begin
		while (p /= null) and then p.all.k < x.k loop
			pp:= p; p:= p.all.s;
		end loop;

		if ((p /= null) and then p.all.k > x.k) or (p = null) then
			q:= new bloc;
			q.all.x.e:= e;
			if (pp = null) then q.all.s:= c; c:= q;
			else q.all.s:= pp.all.s; pp.all.s:= q;
			end if;
		else
			null; -- l'element ja hi era;
		end if;
	end posa;


	procedure treu (c: in out conjunt; k: in clau);
	function consulta (c: in conjunt; k: in clau) return element;
end dllista;
