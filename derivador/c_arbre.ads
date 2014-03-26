--with c_pila;

generic
	max: integer:= 256;
package c_arbre is

	falta_espai: exception;
	type arbre is private;

	procedure abuit(p: out arbre);
	procedure posa(r: in out arbre; e: in character);
	function consulta(i: in arbre) return character;
	function existeix(r: in arbre) return boolean;
	function fe(r: in arbre) return arbre;
	function fd(r: in arbre) return arbre;
	function empelta(op: in character; fe: in arbre; fd: in arbre) return arbre;
	procedure inordre_r(r: in arbre);

private
	type arbre is new integer range 0..max;
	subtype index is arbre;

	type bloc is record
		val: character; 
		fe: index;
		fd: index;
		s: index;
	end record;

	type mem is array (index'range) of bloc;

	m: mem;
	lliure: index;

end c_arbre;
