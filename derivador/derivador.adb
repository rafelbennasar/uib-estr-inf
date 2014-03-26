package body derivador is

	procedure deriva(e: in out expr; dr: out arbre) is
		r: arbre;
	begin
		rec_exp_ini(e, r);
		deriva2(r, dr);
	end deriva;


	procedure deriva2(r : in arbre; dr : out arbre) is
		dex, dfx, aux, t1, t2, fd2: arbre;
	begin
		abuit(dr);

		if (consulta(r) = 'x') then
			posa(dr, '1');
		elsif '0' <= consulta(r) and consulta(r) <= '9' then
			posa(dr, '0');
		elsif consulta(r) = '+' or consulta(r) = '-' or consulta(r) = '*' or consulta(r) = '/' then
			deriva2(fe(r), dex);
			deriva2(fd(r), dfx);
			t1 := empelta('*', dex, fd(r));
			t2 := empelta('*', dfx, fe(r));
			case consulta(r) is
				when '+' => dr:= empelta(consulta(r), dex, dfx);
				when '-' => dr:= empelta(consulta(r), dex, dfx);
				when '*' => dr:= empelta('+', t1, t2);
				when '/' => aux:= empelta('-', t1 ,t2); -- f'*g - f*g' / g2 
						fd2:= empelta('*', fd(r), fd(r));
						dr:= empelta('/', aux, fd2);
				when others => null;
			end case;
		end if;
	end deriva2;

end derivador;
