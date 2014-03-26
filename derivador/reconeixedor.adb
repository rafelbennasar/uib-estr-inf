-- S => T + T | T - T | T
-- T => F * F | F / F | F
-- F => 0..9 | x | ( S ) 

package body reconeixedor is

procedure shift(exp: in out expr) is
begin
	exp.n:= exp.n + 1;
end shift;

procedure set_exp(s: in string; exp: out expr) is
begin
	for i in s'range loop
		exp.v(i):= s(i);
	end loop;
end set_exp;


procedure rec_exp_ini(exp: in out expr; e: in out arbre) is
begin
	rec_exp(exp, e);
	if exp.v(exp.n) /= ';' then
		raise semicolon_error;
	end if;
end rec_exp_ini;


procedure rec_exp(exp: in out expr; e: out arbre) is
op: character:= ' ';
ex, fx: arbre;
begin
	shift(exp);
	rec_term(exp, e);
	while ((exp.v(exp.n) = '+') or (exp.v(exp.n) = '-')) loop
		op:= exp.v(exp.n); shift(exp);  
		rec_term(exp, fx);
		e:= empelta(op, e, fx);
	end loop;
end rec_exp;


procedure rec_term(exp: in out expr; t: out arbre) is
op: character:=' ';
ex, fx: arbre;
begin
	rec_fact(exp, t);
	while (exp.v(exp.n) = '*') or (exp.v(exp.n) = '/') loop
		op:= exp.v(exp.n); shift(exp); 
		rec_fact(exp, fx);
		t:= empelta(op, t, fx);
	end loop;
end rec_term;



procedure rec_fact(exp: in out expr; f: out arbre) is
begin
	if (('0' <= exp.v(exp.n) and exp.v(exp.n) <= '9') or (exp.v(exp.n) = 'x')) then
		abuit(f);
		posa(f, exp.v(exp.n));
		shift(exp);
	elsif (exp.v(exp.n) = '(')  then 
		rec_exp(exp, f); 
		shift(exp);
	end if;
end rec_fact;



end reconeixedor;
