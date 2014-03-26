package dconjunt is
	max: integer:= 20;

	type rang is new integer range 0..max;
	subtype iterador is rang range 1..rang'last;
	--subtype iterador is private;
	type conjunt is private;

	procedure cbuit (c: out conjunt);
	procedure posa (c: in out conjunt; x: in element);
	procedure posa (c: in out conjunt; x: in element);
	procedure treu (c: in out conjunt; x: in element);
	function pertany (c: in out conjunt; x: in element) return boolean;
	function primer (c: in conjunt) return iterador;
	function seguent (c: in conjunt; it: in iterador) return iterador;
	function es_significatiu (c: in conjunt; it: in iterador) return boolean;
	function obte_element (c: in conjunt; it: in iterador) return element;


	type conjunt is array (rang'range) of boolean;
end dconjunt;

