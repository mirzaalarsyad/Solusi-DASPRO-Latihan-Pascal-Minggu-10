// NIM/ Nama = 16518189 / M Mirza Fathan Al Arsyad
// Tanggal = 23 Maret 2019

unit upecahan;
 
interface
    type
        pecahan = record
                    n,d : integer;
                  end; 
     
    function IsPecahanValid (n, d : integer) : boolean;
{ Menghasilkan true jika n dan d dapat membentuk pecahan yang valid dengan n 
  sebagai pembilang dan d sebagai penyebut, yaitu jika n >= 0 dan d > 0 }
procedure TulisPecahan (var P : pecahan);
{ Menuliskan pecahan P ke layar dalam bentuk "P.n/P.d" }
{ Tidak diawali, diselangi, atau diakhiri dengan karakter apa pun, termasuk spasi 
  atau pun enter }
{ I.S.: P terdefinisi }
{ F.S.: P tercetak di layar dalam bentuk "P.n/P.d" }
function IsLebihKecil (P1, P2 : pecahan) : boolean;
{ Menghasilkan true jika P1 lebih kecil dari P2 }
{ pecahan <n1,d1> lebih kecil dari pecahan <n2,d2> jika dan hanya jika: 
  n1*d2 < n2*d1 }
function Selisih (P1, P2 : pecahan) : pecahan;
{ Menghasilkan pecahan selisih antara P1 dengan P2 atau P1 - P2 }
{ Selisih pecahan <n1,d1> dengan <n2,d2> menghasilkan pecahan <n3,d3> dengan:
  n3 = n1*d2 - n2*d1 dan d3 = d1*d2. }
{ Prekondisi : P1 >= P2 }    

implementation

    function IsPecahanValid (n, d : integer) : boolean;
     begin
        if(n>=0) and (d>0) then
        begin
            IsPecahanValid := True;
        end else
        begin
            IsPecahanValid := False;
        end;
     end;
     
     procedure TulisPecahan (var P : pecahan);
     begin
        write(P.n);
        write('/');
        writeln(P.d);
     end;
     
     function IsLebihKecil (P1, P2 : pecahan) : boolean;
     begin
        if ((P1.n)*(P2.d) < (P2.n)*(P1.d)) then
        begin
            IsLebihKecil := True;
        end else
        begin
            IsLebihKecil := False;
        end;
     end;
     
     function Selisih (P1, P2 : pecahan) : pecahan;
     begin
        Selisih.n := P1.n*P2.d - P2.n*P1.d;
        Selisih.d := P1.d*P2.d;
     end;
end .