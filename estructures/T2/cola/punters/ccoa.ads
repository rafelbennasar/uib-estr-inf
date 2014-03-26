generic
   type element is private;

package ccoa is
		type bloc;
		type pbloc is access bloc;

   type bloc is
			  record
		  e: element;
		  s: pbloc;
   end record;

   type coa is
		   record
				   p: pbloc;
				   q: pbloc;
		   end record;

   procedure cbuida(p: out coa);
   procedure posa(p: in out coa; e: in element);
   --procedure eliminaprimer(p: in out coa);
   function primer(p: in coa) return element;
   function esbuida(p: in coa) return boolean;

end  ccoa;
