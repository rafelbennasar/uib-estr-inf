package dconjunt is
	type bloc;
	type conjunt is access bloc;

	type bloc is record
		e: element;
		k: clau;
		s: conjunt;
	end record;

	procedure cbuit (c: out conjunt);
	procedure posa (c: in out conjunt; x: in element);
	procedure treu (c: in out conjunt; k: in clau);
	function consulta (c: in conjunt; k: in clau) return element;


end dconjunt;

