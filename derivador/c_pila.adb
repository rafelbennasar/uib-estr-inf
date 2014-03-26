package body c_pila is

  subtype index is pila;
  type bloc is record
    e: p_element;
    s: index;
  end record;
  type mem is array (index'range) of bloc;

  m: mem;
  lliure: index;

  procedure pbuida(p: out pila) is 
  begin
    p:= 0;
  end pbuida;



  procedure empila(p:in out pila; e:in p_element) is
    q: index;
  begin

    if (lliure = 0) then
      raise desb_sup;
    else
      q:= lliure;
      lliure:= m(lliure).s;
      m(q).e:= e;
      m(q).s:= p;
      p:= q;
    end if;
  end empila;



  procedure desempila(p:in out pila) is
    q: index;
  begin

    if (p = 0) then
      raise desb_inf;
    else
      q:= p;
      p:= m(p).s;
      m(q).s:= lliure;
      lliure:= q;
    end if;
  end desempila;



  function cim(p:in pila) return p_element is
  begin

    if (p = 0) then
      raise desb_inf;
    else
      return m(p).e;
    end if;
  end cim;
  


  function esbuida(p:in pila) return boolean is
  begin
    return (p = 0);
  end esbuida;



begin

  for i in index'first..(index'last - 1) loop
    m(i).s:= i + 1;
  end loop;

  m(index'last).s:= 0;
  lliure:= 1;

end c_pila;
