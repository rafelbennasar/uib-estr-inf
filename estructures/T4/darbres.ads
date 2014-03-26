package darbres is
	type node;
	type pnode is access node;

	type node is record
		k: clau;
		d: dades;
		fe, fd: pnode;
	end record;

	procedure cbuit (c: out pnode);
	procedure posa (p: in out pnode; e: in element);
	procedure consulta (p: in pnode; k: in clau; d: out dades);
	procedure elimina (c: in out pnode; k: in clau);
	procedure segregamenor (c: in out pnode; k: in clau);



end darbres;

