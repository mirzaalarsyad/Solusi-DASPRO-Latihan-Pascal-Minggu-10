// NIM / Nama : 16518189 / M Mirza Fathan Al Arsyad

Program tigainteger;
(* Input: 3 integer: A, B, C *)
(* Output: Sifat integer dari A, B, C (positif/negatif/nol dan ganjil/genap) 
           Nilai maksimum, minimum, dan nilai tengah *)
 
(* KAMUS *)
var
       A, B, C : integer;
       nilaitengah : integer;
 
procedure CekInteger (var x : integer);
begin
    if ((x > 0) and (x mod 2 = 0)) then
    begin
        writeln('POSITIF-GENAP');
    end else if (x >=0) and (x mod 2 = 1) then
    begin
        writeln('POSITIF-GANJIL');
    end else if (x < 0) then
    begin
        writeln('NEGATIF');
    end else
    begin
        writeln('NOL');
    end;
end;
              
function Max (a, b, c : integer) : integer;
begin
    if (a>=b) and (a>=c) then
    begin
        Max := a;
    end else if (b>=a) and (b>=c) then
    begin
        Max := b;
    end else
    begin
        Max := c;
    end;
end;

function Min (a, b, c : integer): integer;
begin
    if (a<=b) and (a<=c) then
    begin
        Min := a;
    end else if (b<=a) and (b<=c) then
    begin
        Min := b;
    end else
    begin
        Min := c;
    end;
end;
        
(* PROGRAM UTAMA *)
begin
       (* Input *)
       readln(A);
       readln(B);
       readln(C);
       
       (* Menuliskan sifat integer *)
       CekInteger(A);
       CekInteger(B);
       CekInteger(C);
       
       (* Penulisan maksimum, minimum, dan nilai tengah *)
       writeln(Max(A,B,C));
       writeln(Min(A,B,C));
       nilaitengah := A + B + C - Max(A,B,C) - Min(A,B,C); 
       writeln(nilaitengah);
end .