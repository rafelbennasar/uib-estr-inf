package dconjunt is
	type element is new character range 'a'..'z';
	type iterador is range element'first..element'last;
	--subtype iterador is private;
--	type conjunt is private;

	type conjunt is array (element'range) of boolean;
	procedure cbuit (c: out conjunt);
	procedure posa (c: in out conjunt; x: in element);
	procedure treu (c: in out conjunt; x: in element);
	function pertany (c: in conjunt; x: in element) return boolean;
	function primer (c: in conjunt) return iterador;
	function seguent (c: in conjunt; it: in iterador) return iterador;
	function es_significatiu (c: in conjunt; it: in iterador) return boolean;
	function obte_element (c: in conjunt; it: in iterador) return element;


end dconjunt;

