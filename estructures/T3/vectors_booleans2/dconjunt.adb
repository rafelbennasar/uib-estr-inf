package body dconjunt is

	procedure cbuit (c: out conjunt) is
	begin
		for x in rang loop
			a(x) := fals;
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


	function pertany (c: in out conjunt; x: in element) return boolean is
	begin
		return c(x);
	end pertany;


	function primer (c: in conjunt) return iterador is
		it: iterador:= rang'first;
	begin
		while it < rang'last and not c(it) loop
			it := it + 1;
		end loop;

		if not c(it) then return 0;
		else return it;
		end if;
	end primer;


	function seguent (c: in conjunt; it: in iterador) return iterador is
		it: iterador:= it + 1;
	begin
		while it < rang'last and not c(it) loop
			it := it + 1;
		end loop;

		if not c(it) then return 0;
		else return it;
		end if;
	end primer;


	function es_significatiu (c: in conjunt; it: in iterador) return boolean;
	function obte_element (c: in conjunt; it: in iterador) return element;
end dconjunt;

