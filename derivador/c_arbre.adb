with ada.text_io; use ada.text_io;
package body c_arbre is

procedure abuit(p: out arbre) is
begin
	p:= lliure;
	if p = index'last then raise falta_espai; end if;

	lliure := m(p).s;
	m(p).val:= ' '; 
	m(p).fe:= index(0);
	m(p).fd:= index(0);
end abuit;

procedure posa(r: in out arbre; e: character) is
begin
	m(r).val:= e;
end posa;
  

function consulta(i: in arbre) return character is
begin
	return m(i).val;
end consulta;


function fe(r: in arbre) return arbre is
begin
	if existeix(m(r).fe) then
		return m(r).fe;
	end if;
	return arbre(0);
end fe;


function fd(r: in arbre) return arbre is
begin
	if existeix(m(r).fd) then
		return m(r).fd;
	end if;
	return arbre(0);
end fd;


function existeix(r: in arbre) return boolean is
begin
	return (r /= arbre(0));
end existeix;



function empelta(op: in character; fe: in arbre; fd: in arbre) return arbre is
r: arbre;
begin
	abuit(r);
	posa(r, op);
	m(r).fe:= fe;
	m(r).fd:= fd;

	return r;
end empelta;



procedure inordre_r(r: in arbre) is
begin
	if fe(r) /= 0 then inordre_r(fe(r)); end if;
	put(consulta(r));
	if fd(r) /= 0 then inordre_r(fd(r)); end if;
end inordre_r;


begin

	for i in index'first..(index'last - 1) loop
		m(i).val := ' ';
		m(i).s:= i + 1;
	end loop;

	m(index'last).s:= 1;
	lliure:= 1;

end c_arbre;
