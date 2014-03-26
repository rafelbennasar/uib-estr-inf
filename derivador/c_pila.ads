generic

  type p_element is private;	
  max: integer:= 256;

package c_pila is
  type pila is private; -- limited private;

  procedure pbuida(p: out pila);
  procedure empila(p:in out pila; e:in p_element);
  procedure desempila(p:in out pila);   
  function cim(p:in pila) return p_element;
  function esbuida(p:in pila) return boolean;

  desb_sup:exception;
  desb_inf:exception;

private 
  type pila is new integer range 0..max;

end c_pila;



