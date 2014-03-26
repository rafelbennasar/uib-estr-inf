with ada.text_io; use ada.text_io;
with reconeixedor; use reconeixedor; 
with c_arbre;
with derivador; use derivador;
use reconeixedor.mytree; 

procedure main is
	expressio, expressio1, expressio2: expr; 
	entrada: string:= "(2*x);";
	entrada1: string:= "2/x;";
	entrada2: string:= "(2*x)/x;";
	r, r1, r2: arbre;

begin
	new_line;
	put_line("Anem a derivar:");
	put_line(entrada);
	set_exp(entrada, expressio);
	deriva(expressio, r);
	put_line("Derivada:");
	inordre_r(r);

	new_line(2);
	put_line("Anem a derivar:");
	put_line(entrada1);
	set_exp(entrada1, expressio1);
	deriva(expressio1, r1);
	put_line("Derivada:");
	inordre_r(r1);

	new_line(2);
	put_line("Anem a derivar:");
	put_line(entrada2);
	set_exp(entrada2, expressio2);
	deriva(expressio2, r2);
	put_line("Derivada:");
	inordre_r(r2);
end main;
