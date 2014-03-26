generic
   type element is private;

package pllista is
	type bloc;
	type pbloc is access bloc;

   type bloc is
	  record
	  e: element;
	  s: pbloc;
   end record;


	function propietat(z: in pbloc) return boolean;
	procedure visita(z: in pbloc);
	procedure llistabuida(p: out pbloc);
	procedure recorregut(primer: in pbloc);
	procedure inserir(primer: in out pbloc; e: in element);
	function cerca(primer: in pbloc) return element;

end  pllista;
