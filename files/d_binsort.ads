with Direct_Io;
with ada.text_io; use ada.text_io;
package d_binsort is

	MAX  : constant Integer:= 5; -- Nombre de paraules
	LONG : constant Integer:= 10; --Long. màxima de la paraula. 

	type paraules is private;
	type cesta is private;
	type canasto is private;
	type paraula is new string(1..LONG);

	PACKAGE Ficheropal IS NEW Direct_IO(paraula); 
	USE Ficheropal;


	procedure Insertar(f: in Ficheropal.File_Type; i: in integer; b: in out Canasto; k: in integer);
	procedure Concatenar(f: in Ficheropal.File_Type; b: in Canasto);
	procedure Distribuir(f: in Ficheropal.File_Type; I: in integer; b: in out Canasto);
	procedure Imprimir(f: in Ficheropal.File_Type; op: in integer);
	procedure Ordenar(f: in Ficheropal.File_Type);

	procedure insertardatos(f: in out ficheropal.File_Type);
	procedure crea(nom: in String);
	procedure mostra(nom: in String; op: in integer);
	procedure ordena(nom: in String);

private
	type paraules is array(1..MAX) of paraula;
	subtype index is integer range 0..max;
	type indexos is array(index) of integer;
	subtype alfabeto is character range ' '..'z';
	type rango is new integer range character'Pos(Alfabeto'First)..Character'Pos(Alfabeto'Last);

	type cesta is record
		p: index;
		u: index;
	end record;
	type canasto is array(rango) of cesta;

	s: indexos;
	f: Ficheropal.File_Type;

end d_binsort;
