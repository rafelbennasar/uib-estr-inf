with reconeixedor; use reconeixedor;
with ada.text_io; use ada.text_io;
use reconeixedor.mytree;
package derivador is
	procedure deriva(e: in out expr; dr: out arbre);
	procedure deriva2(r: in arbre; dr: out arbre);
end derivador;
