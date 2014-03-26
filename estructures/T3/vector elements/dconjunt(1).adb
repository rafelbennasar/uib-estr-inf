package body dconjunt is

	ne: integer:= 0;

	procedure cbuit (c: in vector) is
	begin
		c.ne:= 0;
	end cbuit;


	procedure posa (c: in out vector; x: in element) is
		i: index;
	begin
		while i <= ne and then a(i).k /= x.k loop
			i:= i + 1;
		end loop;
		
		if (i <= ne) then
			null; -- l'element ja hi era!
		else
			ne:= ne + 1;
			a(ne):= e; -- element nou!
		end if;
	end posa;

	procedure treu (c: in out vector; x: in element) is
		i: index:= index'first;
	begin
		while i <= ne and then a(i).k /= x.k loop
			i:= i + 1;
		end loop;

		if i > ne then
			null; -- l'element no hi era!
		else
			a(i) := a(ne);
			ne:= ne - 1;
		end if;
	end treu;


	function pertany (c: in conjunt; x: in vectorelements) return boolean is
	begin
		return c(x);
	end pertany;


	function primer (c: in conjunt) return iterador is
		it: iterador:= iterador'first;
	begin
		while it < rang'last and not c(it) loop
			it := it + 1;
		end loop;

		if not c(it) then return iterador'last;
		else return it;
		end if;
	end primer;


	function seguent (c: in conjunt; it: in iterador) return iterador is
		it: iterador:= it'succ;
	begin
		while it < iterador'last and not c(it) loop
			it := it + 1;
		end loop;

		if not c(it) then return it'first;
		else return it;
		end if;
	end seguent;


	function es_significatiu (c: in conjunt; it: in iterador) return boolean is
	begin
		return (c(it) = true);
	end es_significatiu;

	function obte_element (c: in conjunt; it: in iterador) return vectorelements is
	begin
		return c(it);
	end obte_element;
end dconjunt;

