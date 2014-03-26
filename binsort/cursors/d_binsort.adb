-- 
-- d_binsort.adb
--

package body d_binsort is


	procedure insertardatos(f: in out Ficheropal.File_Type) is
		l: Natural;
		Pal: paraula;

	begin

	S(index'First):= 1;

	for i in 1..MAX loop 
		Put("Paraula: ");
		for k in 1..LONG loop Pal(K):= ' '; end loop;
		Get_Line(String(Pal), l);
	       
		Write(F, Pal);

		if i /= index'Last THEN 
			S(I):= I+1;
		else
			S(index'Last):= 0;
		end if;
	end loop;
	   
	end insertardatos;



	procedure insertar(f: in Ficheropal.File_Type; i: in Integer; b: in out Canasto; k: in integer) is
		Ki: Ficheropal.Positive_Count;
		      
		Pal: paraula;
		D: Rango;
	begin

	ki:= Ficheropal.Positive_Count(k);
	Set_Index(F, Ki);
	Read(F, pal);
	d:= Rango(character'pos(Alfabeto(Pal(i))));

	if B(d).p = 0 then
		B(d).p:= k;
		B(d).u:= k;
	else
		S(B(d).u):= k;
		B(d).u:= k;
	end if;	    
	S(k):= 0;   
	end insertar;
  



	procedure concatenar(f: in Ficheropal.File_Type; B: in Canasto) is
		darrer: Rango; 
		i: Rango;
	begin
	i:= Rango'First; --d

	while B(i).P = 0 loop
		I:= I+1;   
	end loop;

	if B(i).P /= 0 then
		S(index'First):= B(i).p;
		darrer:= i;
		while i < Rango'Last loop
			i:= i+1;
			if B(i).P /= 0 then 
				S(B(darrer).u):= B(i).p;
				darrer:= i;
			end if;
		end loop;
	end if;
	end concatenar;



   
	procedure distribuir(f: in Ficheropal.File_Type; i: in Integer; b: in out Canasto) is
		k, l: Integer:=0;
	begin
	for j in Canasto'RANGE loop
		B(J).P:= 0;
		B(J).U:= 0;   
	end loop;

	k:= S(index'First);
	while k /= 0 loop  
		l:= S(K);
		Insertar(F, I, B, K);
		k:= l;
	end loop;
	end distribuir;




	procedure ordenar(f: in Ficheropal.File_Type) is
		B: Canasto;
	begin
	for i in reverse 1..LONG loop
		Distribuir(F, I, B);  
		Concatenar(F, B);     
	end loop;    
	end ordenar;















	procedure imprimir(f: in Ficheropal.File_Type; op: in integer) is
		p, x: paraula;
		I: Integer:= 0;
		Ki: Ficheropal.Positive_Count;
	begin

	if op = 1 then

		while not End_of_file(F) loop
			Read(F, p);
			for j in 1..LONG loop
				Put(P(j));
			end loop;
			new_line;
		end loop;
	else if op = 2 then
		while S(i) /= 0 loop
			ki:= Ficheropal.Positive_Count(S(i));
			Set_Index(F, Ki);
			Read(F, p);
			for j in 1..LONG loop
				Put(p(J));
			end loop;
			New_Line;
			i := S(i);
		end loop;
	end if;
	end if;
	end imprimir;


	procedure crea(nom: in String) is
	begin
		Create(F, Inout_File, nom);
		Insertardatos(F);
		Close(F);
	end crea;

	procedure mostra(nom: in String; op: in integer) is
	begin
		Open(F, Inout_File, nom);
		Imprimir(F, op);
		Close(F);
	end mostra;

	procedure ordena (nom: in String) is
	begin
		Open(F, Inout_File, nom);
		ordenar(F);
		Close(F);
	end ordena;

end d_binsort;











--
-- d_binsort.ads
--

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














--
-- main.adb
--
with d_binsort; use d_binsort;
with ada.text_io; use ada.text_io;

procedure main is
begin
	crea("dades.dat");   
	put_line("Llista sense ordenar:");
	mostra("dades.dat", 1);
	ordena("dades.dat");
	put_line("Llista ordenada:");
	mostra("dades.dat", 2);

end main;
