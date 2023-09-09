{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


// Misal kita mau buat untuk menghitung luas bangunan
program menghitungLuasGeometri;

{Disini kita sudah tau nih rumusnya untuk
    1. Luas bujur sangkar = s * s
    2. Luas Lingkaran = pi * r * r
    3. Luas Segitiga = 1/2 * a * t (disini 1/2 kita buat 0.5 aja biar ngak bingung)
    4. Luas Trapesium = 1/2 * t(a+b)
    
    nah setelah kita tahu rumusnya, selanjutnya kita masukkin variabelnya
}

var // disini nanti kita masukkin variable nya 
 s : double; // s -> untuk menghitung luas bujur sangkar
 pi,r : double; // pi dan r -> untuk menghitung luas lingkaran
 a,b,t : double; // a,b,t -> untuk menghitung luas segitiga dan trapesium 
 luas : double; // luas -> untuk mengeluarkan hasilnya nanti
 masukkan : integer; // ini untuk masukkannya 
 
{
    Kode 1 :
    Kode dibawah ini nanti untuk sebagai masukkan, user nanti mau piliha
    hitung luas bangun yang mana, nah untuk isinya berupa angka 1,2,3,4 
} 

// kode 1 :
begin

writeln('Program menghitung luas');
writeln('1.BujurSangkar');
writeln('2.Lingkaran');
writeln('3.Segitiga');
writeln('4.Trapesium');
write('masukkan pilihan (berupa angka)');
readln(masukkan);

luas := 0.0; // ini untuk inisialisasi nilai luas pertama biar ngak error

{
    Kode 2 :
    Kode dibawah ini disebut if else statement, dimana nanti dari hasil masukkan akan dipilih
    sesuai logikanya, misal masukkan = 1, maka nanti akan menghitung luas Bujur sangkar, dan seterusnya
    
}

// Kode 2 :

if masukkan = 1 then 
 
 begin
    // jika user memilih no 1, berarti user meilih menghitung luas BujurSangkar, nanti
    // disini kita masukkin inputan s dan rumus luasnya 
    writeln('Menghitung luas bujur sangkar');
    write('s =');
    readln(s);
    luas := s*s;
    writeln('luas bujur sangkar :',luas);
 end
 
else if masukkan = 2 then

  begin
    // jika user memilih no 2, berarti user memilih menghitung luas Lingkaran
    // disini kita masukkin inputan r dan rumus luasnya 
    writeln('menghitung luas lingkaran');
    pi := 3.14;
     write('r =');
    readln(r);
    
    luas := pi*r*r;
    writeln('luas lingkaran :', luas);
  end
  
else if masukkan = 3 then 

  begin 
   // jika user memilih no 3, nanti disini menghitung luas Segitiga
   // disini kita masukkin inputan a dan t dan rumus luasnnya
   writeln('menghitung luas segitiga');
   write('a =');
   readln(a);
   write('t =');
   readln(t);
   
   luas := 0.5 * a * t;
   writeln('luas segitiga :', luas);
   
  end
   
else if masukkan = 4 then 

  begin
   // jika user memilih no 4, disini menghitung luas trapesium
   // disini kita masukkan inputan t,a,dan b dan rumus luasnya
   writeln('menghitung luas trapesium');
   write('t =');
   readln(t);
   write('a =');
   readln(a);
   write('b =');
   readln(b);
   
   luas := 0.5 * t * (a+b);
   writeln('luas trapesium :', luas)
  end 
  
 else 
 
   // Kalau ini, kode untuk menampilkan hasil jika masukkan tidak sesuai misal masukkan = 5, jadi dia ngak sesuai
   begin
   writeln('pilihan yang dimasukan tidak ada, ulangi lagi ya :)')
   end;
   
end.

