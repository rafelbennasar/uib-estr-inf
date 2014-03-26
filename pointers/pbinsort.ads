generic
	max : positive;
package pbinsort is
	type llista is private;
	type paraules is private;
	subtype element is string(1..MAX); 

	procedure lposa(l : in out llista; e : in element);
	procedure imprimeix(l : in llista);
	
	procedure distribuir(b : out paraules; l : in llista; i : in integer) is
	procedure concatenar(b : in paraules; l : out llista) is
	procedure ordena(l : in out llista);
private	

	type bloc;
	type pbloc is access bloc;

	type llista is 
		record
			i: pbloc;
			f : pbloc;
		end record;

	type bloc is record
		e : element;
		s : pbloc;
	end record;

	blanc : constant character := character'pred('_');
	subtype cars is character range blanc..'z';
	type paraules is array (cars) of llista;

end pbinsort;
