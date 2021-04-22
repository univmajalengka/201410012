program konversi_suhu;
uses crt;
var C, R, F, K, suhu : real;
    pilihan : integer;
    ulang : char;
begin
repeat
clrscr;
WRITELN ('========================');
writeln (' PROGRAM KONVERSI SUHU  ');
WRITELN ('========================');
WRITELN ('1. CELCIUS    (c)');
writeln ('2. Reamur     (R)');
writeln ('3. Fahrenheit (F)');
writeln ('4. Kelvin     (K)');
writeln ('silahkan pilih suhu yang akan dikonversi [1/2/3/4] :');
readln (pilihan);
write ('silahkan masukan besar suhu yang akan dikonversi :');
readln (suhu);
case pilihan of
1 : begin
    R := 4/5*suhu;
    writeln (suhu:10:2, ' C =', R:10:2, ' R');
    F := 9/5*suhu+32;
    writeln (suhu:10:2, ' C =', F:10:2, ' F');
    K := suhu+273;
    WRITELN (suhu:10:2, ' c =', K:10:2, ' K');
    end;
2 : begin
    C := 5/4*suhu;
    writeln (suhu:10:2, ' R =', C:10:2, ' C');
    F := 9/4*suhu+32;
    writeln (suhu:10:2, ' R =', F:10:2, ' F');
    K := 5/4*suhu+273;
    WRITELN (suhu:10:2, ' R =', K:10:2, ' K');
    end;
3 : begin
    C := 5/9*(suhu-32);
    writeln (suhu:10:2, ' F =', C:10:2, ' C');
    R := 4/9*(suhu-32);
    writeln (suhu:10:2, ' F =', C:10:2, ' R');
    K := 5/9*(suhu-32)+273;
    WRITELN (suhu:10:2, ' F =', C:10:2, ' K');
    end;
4 : begin
    C := suhu-273;
    writeln (suhu:10:2, ' K =', C:10:2, ' C');
    R := 4/5*(suhu-273);
    writeln (suhu:10:2, ' K =', C:10:2, ' R');
    F := 9/58*(suhu+273)+32;
    WRITELN (suhu:10:2, ' K =', C:10:2, ' F');
    end;
    else writeln ('Maaf pilihan yang anda masukan salah...');
    end;
    writeln ('Ingin menghitung lagi [Y/N] ?');
    readln  (ulang);
    until ulang ='N';
    end.