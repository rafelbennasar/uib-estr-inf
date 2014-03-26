package body dconjunt is

	procedure cbuit (c: out conjunt) is
	begin
		for x in rang loop
			c(x) := false;
		end loop;
	end cbuit;


	procedure posa (c: in out conjunt; x: in element) is
	begin
		c(x):= true;
	end posa;


	procedure treu (c: in out conjunt; x: in element) is
	begin
		c(x) := false;
	end treu;


	function pertany (c: in conjunt; x: in element) return boolean is
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

	function obte_element (c: in conjunt; it: in iterador) return element is
	begin
		return c(it);
	end obte_element;
end dconjunt;

