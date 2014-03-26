generic
   type element is private;

package cpila is
   max: constant integer:= 50;
   type pila is new integer range 0..max;

   subtype index is pila;
   type bloc is
			  record
		  e: element;
		  s: index:= 0;
   end record;

   type mem is array (index'range) of bloc;

   procedure pbuida(p: out index);
   procedure empila(p: in out pila; e: in element);
   procedure desempila(p: in out pila);
   function cim(p: in pila) return element;
   function esbuida(p: in pila) return boolean;

end  cpila;
