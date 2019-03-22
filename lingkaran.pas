// NIM/Nama : 16518189/M Mirza Fathan Al Arsyad
// Tanggal  : 22 Maret 2019

Program ProsesLingkaran;
{ Input: 2 buah Lingkaran }
{ Output: luas, keliling, dan hubungan lingkaran A dan B }
 
{ KAMUS }
const
        PI : real = 3.1415;
type
        { Definisi Type Koordinat }
        Koordinat = record
                        x,y : integer;
                    end;
        { Definisi Type Lingkaran }
        Lingkaran = record
                      c : Koordinat; { titik pusat lingkaran }
                      r : real;      { jari-jari, > 0 }
                    end;
var
        A, B : Lingkaran; { variabel untuk lingkaran A dan B }
 
{ FUNGSI DAN PROSEDUR }
function isValid (r : real) : boolean;
begin
    if(r>0) then
    begin 
        isValid := True;
    end else
    begin
        isValid := False;
    end;
end;

procedure InputLingkaran (var A : Lingkaran);
begin
    readln(((A.c).x),((A.c).y));
    readln(A.r);
    while(not isValid(A.r)) do
    begin
        writeln('Jari-jari harus > 0');
        readln(A.r);
    end;
end;
 
function KelilingLingkaran (A : Lingkaran) : real;
begin
    KelilingLingkaran := 2 * PI * A.r;
end;
 
function LuasLingkaran (A : Lingkaran) : real;
begin
    LuasLingkaran := PI * A.r * A.r;
end;
 
function Jarak (P1, P2 : Koordinat) : real;
begin
    Jarak := sqrt((P2.x-P1.x)*(P2.x-P1.x)+(P2.y-P1.y)*(P2.y-P1.y));
end;

function HubunganLingkaran (A, B : Lingkaran) : integer;
begin
    if (Jarak(A.c,B.c)=0) then
    begin
        if (A.r=B.r) then
        begin
            HubunganLingkaran := 1;
        end else
        begin
            HubunganLingkaran := 2;
        end;
    end else if (Jarak(A.c,B.c)<((A.r)+(B.r))) then
    begin
        HubunganLingkaran := 3;
    end else if (Jarak(A.c,B.c)=((A.r)+(B.r))) then
    begin
        HubunganLingkaran := 4;
    end else
    begin
        HubunganLingkaran := 5;
    end;
end;

{ ALGORITMA PROGRAM UTAMA }
begin
        writeln('Masukkan lingkaran A:');
        InputLingkaran(A);
        writeln('Masukkan lingkaran B:');
        InputLingkaran(B);
        writeln('Keliling lingkaran A = ', KelilingLingkaran(A):4:2);
        writeln('Luas lingkaran A = ', LuasLingkaran(A):4:2);
        writeln('Keliling lingkaran B = ', KelilingLingkaran(B):4:2);
        writeln('Luas lingkaran B = ', LuasLingkaran(B):4:2);
        write('A dan B adalah ');
        if(HubunganLingkaran(A,B)=1) then
        begin
            writeln('sama');
        end else if (HubunganLingkaran(A,B)=2) then
        begin
            writeln('berimpit');
        end else if (HubunganLingkaran(A,B)=3) then
        begin
            writeln('beririsan');
        end else if (HubunganLingkaran(A,B)=4) then
        begin
            writeln('bersentuhan');
        end else
        begin
            writeln('saling lepas');
        end;
end . 
