generic
   type element is private;

package ppila is
   type bloc is limited private;
   type pila is access bloc;

   procedure pbuida(p: out pila);
   procedure empila(p: in out pila; e: in element);
   procedure desempila(p: in out pila);
   function cim(p: in pila) return element;
   function esbuida(p: in pila) return boolean;

private

    type bloc is record
                e: element;
                p: pila;
        end record;

end  ppila;
