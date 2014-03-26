with c_arbre; 

package reconeixedor is
	max : integer := 32; -- 6;


	package mytree is new c_arbre;
	use mytree;

	semicolon_error: exception;
	type expr is private;

	procedure set_exp(s: in string; exp: out expr);
	procedure shift(exp: in out expr);
	procedure rec_exp_ini(exp: in out expr; e: in out arbre);
	procedure rec_exp(exp: in out expr; e: out arbre);
	procedure rec_fact(exp: in out expr; f: out arbre);
	procedure rec_term(exp: in out expr; t: out arbre);

private
	type expr is record
		v: string(1..max);
		n: integer:= 0;
	end record;

end reconeixedor;
