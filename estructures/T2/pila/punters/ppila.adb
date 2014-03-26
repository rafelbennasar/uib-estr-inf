package body ppila is

   procedure pbuida(p: out pila) is
   begin
      p := null;
   end pbuida;

   procedure empila(p: in out pila; e: in element) is
      q: pila;
   begin
      q := new bloc;
      q.all.e := e;
      q.all.p := p;
      p := q;
   end empila;

   procedure desempila(p: in out pila) is
   begin
      if (p /= null) then
         p := p.all.p;
      end if;
   end desempila;

   function cim (p: in pila) return element is
   begin
      if (p /= null) then
         return p.all.e;
      end if;
   end cim;

   function esbuida(P:in Pila) return boolean is
   begin
	   return (p = null);
   end esbuida;

end ppila;


