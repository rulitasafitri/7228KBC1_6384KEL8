/****************************************************************************

        Copyright (c) 1984 - 2000 Prologelopment Center A/S

 Project: Sistem Pakar untuk mendiagnosa Penyakit Obisitas
 FileName: Obesitas.PRO
 Written by: Group 8
 Comments:
******************************************************************************/

domains
    sum = real %pendeklarasian yang akan digunakan pada predikat,dimana variabel sum dengan tipe data real
    in = char  %pendeklarasian yang akan digunakan pada predikat,dimana variabel char dengan tipe data char
    nama = string %pendeklarasian yang akan digunakan pada predikat,dimana variabel nama dengan tipe data string
    group = string* %pendeklarasian yang akan digunakan pada predikat, dimana variabel group dengan tipe data string*

predicates
    nondeterm run %pendeklarasian predikat run Sebelum mendefinsikan predikat di section clauses
    nondeterm start%pendeklarasian predikat start Sebelum mendefinsikan predikat di section clauses
    nondeterm anggota%pendeklarasian predikat anggota Sebelum mendefinsikan predikat di section clauses
    nondeterm mulai%pendeklarasian predikat mulai Sebelum mendefinsikan predikat di section clauses

    nondeterm kurus %pendeklarasian predikat kurus Sebelum mendefinsikan predikat di section clauses
    nondeterm normal%pendeklarasian predikat normal Sebelum mendefinsikan predikat di section clauses
    nondeterm gemuk%pendeklarasian predikat gemuk Sebelum mendefinsikan predikat di section clauses
    nondeterm obesitasringan%pendeklarasian predikat obesitasringan Sebelum mendefinsikan predikat di section clauses
    nondeterm obesitassedang%pendeklarasian predikat obesitassedang Sebelum mendefinsikan predikat di section clauses
    nondeterm obesitasberat%pendeklarasian predikat obesitas berat Sebelum mendefinsikan predikat di section clauses

    nondeterm salahsaran%pendeklarasian predikat salahsaran Sebelum mendefinsikan predikat di section clauses

    nondeterm sarangemuk1%pendeklarasian predikat sarangemuk1 Sebelum mendefinsikan predikat di section clauses
    nondeterm sarangemuk2%pendeklarasian predikat sarangemuk2 Sebelum mendefinsikan predikat di section clauses
    nondeterm sarangemuk3%pendeklarasian predikat sarangemuk3 Sebelum mendefinsikan predikat di section clauses
    nondeterm sarangemuk4%pendeklarasian predikat sarangemuk4 Sebelum mendefinsikan predikat di section clauses
    nondeterm sarangemuk5%pendeklarasian predikat sarangemuk5 Sebelum mendefinsikan predikat di section clauses

    nondeterm saranringan1%pendeklarasian predikat saranringan1 Sebelum mendefinsikan predikat di section clauses
    nondeterm saranringan2%pendeklarasian predikat saranringan2 Sebelum mendefinsikan predikat di section clauses
    nondeterm saranringan3%pendeklarasian predikat saranringan3 Sebelum mendefinsikan predikat di section clauses
    nondeterm saranringan4%pendeklarasian predikat saranringan4 Sebelum mendefinsikan predikat di section clauses
    nondeterm saranringan5%pendeklarasian predikat saranringan5 Sebelum mendefinsikan predikat di section clauses

    nondeterm saransedang1%pendeklarasian predikat saransedang1 Sebelum mendefinsikan predikat di section clauses
    nondeterm saransedang2%pendeklarasian predikat saransedang2 Sebelum mendefinsikan predikat di section clauses
    nondeterm saransedang3%pendeklarasian predikat saransedang3 Sebelum mendefinsikan predikat di section clauses
    nondeterm saransedang4%pendeklarasian predikat saransedang4 Sebelum mendefinsikan predikat di section clauses
    nondeterm saransedang5%pendeklarasian predikat saransedang5 Sebelum mendefinsikan predikat di section clauses

    nondeterm input(in)%predikat input memiliki parameter yang didalamnya terdapat variabel in dengan tipe data char yang dideklarasikan di domains
    nondeterm keluar(in)%predikat keluar memiliki parameter yang didalamnya terdapat variabel in dengan tipe data char yang dideklarasikan di domains
    nondeterm outt(in)%predikat outt memiliki parameter yang didalamnya terdapat variabel in dengan tipe data char yang di deklarasikan di domains
    nondeterm yes(in)%predikat yes memiliki parameter yang didalamnya terdapat variabel in dengan tipe data char yang di deklarasikan di domains
    nondeterm noo(in)%predikat noo memiliki parameter yang didalamnya terdapat variabel in dengan tipe data char yang di deklarasikan di domains
    nondeterm what(in)%predikat what memiliki parameter yang didalamnya terdapat variabel in dengan tipe data char yang di deklarsikan di dimains
    nondeterm jawabgemuk(in,in,in)%predikat jawabgemuk memiliki parameter yang didalamnya terdapat tiga variabel in dengantipe data char yang di deklarasikan di domains
    nondeterm jawabringan(in,in,in)%predikat jawabringan memiliki parameter yang didalamnya terdapat tiga variabel in dengantipe data char yang di deklarasikan di domains
    nondeterm jawabsedang(in,in,in)%predikat jawabsedang memiliki parameter yang didalamnya terdapat tiga variabel in dengantipe data char yang di deklarasikan di domains
    nondeterm name(nama)%predikat name memiliki parameter yang didalamnya terdapat variabel nama dengantipe data string yang di deklarasikan di domains
    nondeterm jenis(sum,sum,sum)

    nondeterm namegroup(symbol,group)

clauses
    run:-
        write("[*] - - - - - - - - - - - - - - - - - - Diagnosa Penyakit Obesitas - - - - - - - - - - - - - - - - - -[*]"),nl,
        write("       1. Start "),nl,
        write("       2. Anggota "),nl,
        readchar(Input),input(Input).
        

    input('1'):-nl,
        start.
    input('2'):-nl,
        anggota.
    input(X):-nl,
        X<>'1',X<>'2',
        run.

    keluar('y'):-
        write("       Thank You"),nl.
    keluar('Y'):-
        write("       Thank You"),nl.
    keluar(_):-
        start.

    outt('y'):-
        write("       Thank You"),nl.
    outt('Y'):-
        write("       Thank You"),nl.
    outt(_):-
        run.

    name(Nama):-
        readln(Nama).



%% Perhitungan IMT
    jenis(BB,TB,Sum):-
        Sum = BB/(TB*TB),Sum<18,
        nl,kurus.
    jenis(BB,TB,Sum):-
        Sum = BB/(TB*TB),Sum>=18,Sum<=25,
        nl,normal.

    jenis(BB,TB,Sum):-
        Sum = BB/(TB*TB),Sum>25,Sum<=29,
        nl,write("[*] - - - - - - - - - - - - - - - - - - - - Please Input Data Y or N - - - - - - - - - - - - - - - - - - [*]"),gemuk.

    jenis(BB,TB,Sum):-
        Sum = BB/(TB*TB),Sum>29,Sum<=34,
        nl,write("[*] - - - - - - - - - - - - - - - - - - - - Please Input Data Y or N - - - - - - - - - - - - - - - - - - [*]"),obesitasringan.

    jenis(BB,TB,Sum):-
        Sum = BB/(TB*TB),Sum>34,Sum<=40,
        nl,write("[*] - - - - - - - - - - - - - - - - - - - - Please Input Data Y or N - - - - - - - - - - - - - - - - - - [*]"),obesitassedang.

    jenis(BB,TB,Sum):-
        Sum = BB/(TB*TB),Sum>40,
        nl,obesitasberat.

%% respon
    yes('y').
    yes('Y').
    noo('n').
    noo('N').
    what(_).


%% Menu

    anggota:-
    	write("[*] - - - - - - - - - - - - - - - - - - - - - - - Group 8 Obesitas - - - - - - - - - - - - - - - - - - - - - -[*]"),nl,
        namegroup(anggota,[Isi1|[Isi2|[Isi3|[Isi4|_]]]]),
        write(Isi1),nl,
        write(Isi2),nl,
        write(Isi3),nl,
        write(Isi4),nl,
        write("[*] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - [*]"),nl,
        write("      Ingin Keluar Tekan y"),nl,nl,
        readchar(Pilih),outt(Pilih).
    
    start:-
    	write("[*] - - - - - - - - - - - - - - - - - - - - - - - - Please Input Data - - - - - - - - - - - - - - - - - - - - [*]"),nl,
        write("      Nama: "),
        name(Nama),
        write("      Welcome  ",Nama),nl,
        mulai,write("[*] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - [*]"),nl,
        write("      Ingin Keluar Tekan y "),nl,nl,
        readchar(Pilih),keluar(Pilih).


%% Menu awal
    mulai:-
        write("      Berat Badan Anda (kg): "),
        readreal(BB),
        write("      Tinggi Badan Anda (cm): "),
        readreal(Cm),TB=Cm/100,
        jenis(BB,TB,_).


 %% Type Kurus

    kurus:-
        write("[*] - - - - - - - - - - - - - - - - - - - - - - - - Hasil & Saran - - - - - - - - - - - - - - - - - - - - - - - [*]"),nl,
        write("      Berdasarkan Data Yang Ada:\n\tAnda Tidak termasuk Obesitas & Anda memiliki berat badan yang tidak ideal"),nl,
        write("      Saran: \n\tOlahraga yang teratur\n\tKonsumsi Makanan Bergizi"),nl.

%% Type Berat Badan Normal

    normal:-
        write("[*] - - - - - - - - - - - - - - - - - - - - - - - - Hasil & Saran - - - - - - - - - - - - - - - - - - - - - - - [*]"),nl,
        write("      Berdasarkan Data Yang Ada:\n\tAnda Memiliki Berat Badan Yang Tergolong Normal"),nl.

%% Type Berat Badan Gemuk

    gemuk:-nl,
        write("      Apakah Pipi Anda Tampak Tembem ?"),nl,
        readchar(One),write("      Jawab: ",One),nl,
        write("      Apakah Anda Kurang Olahraga Atau Beraktivitas ?"),nl,
        readchar(Two),write("      Jawab: ",Two),nl,
        write("      Apakah Anda Mengkonsumsi Makanan Yang Berlebihan ?"),nl,
        readchar(Tree),write("      Jawab: ",Tree),nl,
        write("[*] - - - - - - - - - - - - - - - - - - - - - - - - Hasil & Saran - - - - - - - - - - - - - - - - - - - - - - - [*]"),nl,
        jawabgemuk(One,Two,Tree).

%% Solusi Gemuk

    jawabgemuk(One,Two,Tree):-
        noo(One),noo(Two),noo(Tree),sarangemuk1.

    jawabgemuk(One,Two,Tree):-
        yes(One),yes(Two),yes(Tree),sarangemuk2.

    jawabgemuk(One,Two,Tree):-
        yes(One),noo(Two),noo(Tree),sarangemuk3;
        yes(One),yes(Two),noo(Tree),sarangemuk3;
        yes(One),noo(Two),yes(Tree),sarangemuk3.

    jawabgemuk(One,Two,Tree):-
        noo(One),yes(Two),noo(Tree),sarangemuk4;
        noo(One),yes(Two),yes(Tree),sarangemuk4.

    jawabgemuk(One,Two,Tree):-
        noo(One),noo(Two),yes(Tree),sarangemuk5.

    jawabgemuk(One,Two,Tree):-
        what(One),what(Two),what(Tree),salahsaran.

%% sarangemuk

    sarangemuk1:-
        write("      Berdasarkan Data Yang Ada:\n\tAnda termasuk Gemuk & Anda memiliki berat badan diatas Normal"),nl.
    sarangemuk2:-
        write("      Berdasarkan Data Yang Ada:\n\tAnda termasuk Gemuk & Anda memiliki berat badan diatas Normal"),nl,
        write("      Saran: \n\t- Olahraga untuk menurunkan berat badan\n\t- Kurangi Konsumsi Makanan berlemak\n\t- Atur Pola Makan Anda"),nl.
    sarangemuk3:-
        write("      Berdasarkan Data Yang Ada:\n\tAnda termasuk Gemuk & Anda memiliki berat badan diatas Normal"),nl,
        write("      Saran: \n\t- Kurangi Konsumsi Makanan Berlebihan di Larut Malam"),nl.
    sarangemuk4:-
        write("      Berdasarkan Data Yang Ada:\n\tAnda termasuk Gemuk & Anda memiliki berat badan diatas Normal"),nl,
        write("      Saran: \n\t- Lakukan Olahraga yang teratur untuk menurunkan Bert Badan Anda"),nl.
    sarangemuk5:-
        write("      Berdasarkan Data Yang Ada:\n\tAnda termasuk Gemuk & Anda memiliki berat badan diatas Normal"),nl,
        write("      Saran: \n\t- Makan yang teratur"),nl.


%% Type Obesitas Ringan

    obesitasringan:-nl,
        write("      Apakah Anda Sering Mengkonsumsi Makan Ringan pada malam hari ?"),nl,
        readchar(One),write("      Jawab: ",One),nl,
        write("      Apakah Anda Sering Merasa Kantuk Pada Siang Hari ?"),nl,
        readchar(Two),write("      Jawab: ",Two),nl,
        write("      Apakah Anda cepat mengalami kelelahan saat melakukan aktivitas ringan"),nl,
        readchar(Tree),write("      Jawab: ",Tree),nl,
        write("[*] - - - - - - - - - - - - - - - - - - - - - - - - Hasil & Saran - - - - - - - - - - - - - - - - - - - - - - - [*]"),nl,
        jawabringan(One,Two,Tree).

%% Solusi Obesitas Ringan

    jawabringan(One,Two,Tree):-
        noo(One),noo(Two),noo(Tree),saranringan1.

    jawabringan(One,Two,Tree):-
        yes(One),yes(Two),yes(Tree),saranringan2.

    jawabringan(One,Two,Tree):-
        yes(One),noo(Two),noo(Tree),saranringan3;
        yes(One),yes(Two),noo(Tree),saranringan3.
    
    jawabringan(One,Two,Tree):-
        noo(One),yes(Two),yes(Tree),saranringan4;
        noo(One),yes(Two),noo(Tree),saranringan4;
        yes(One),noo(Two),yes(Tree),saranringan4.

    jawabringan(One,Two,Tree):-
        noo(One),noo(Two),yes(Tree),saranringan5.
    
    jawabringan(One,Two,Tree):-
        what(One),what(Two),what(Tree),salahsaran.

%% Saran Obesitas Ringan

    saranringan1:-
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Ringan"),nl.

    saranringan2:-
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Ringan"),nl,
        write("      Saran: \n\t- Kurangi Konsumsi Makanan Cepat Saji\n\t- Lakukan aktivitas fisik minimal 30 menit setiap hari\n\t- Kurangi Makanan dan Minuman yang Manis"),nl.

    saranringan3:-
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Ringan"),nl,
        write("      Saran: \n\t- Konsumsi buah-buah dan sayuran\n\t- Hindari susu tinggi lemak, minumlah susu rendah lemak"),nl.

    saranringan4:-
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Ringan"),nl,
        write("      Saran: \n\t- Makanlah saat mulai merasa lapar\n\t- Berhentilah Makan sebelum kekenyangan"),nl.

    saranringan5:-
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Ringan"),nl,
        write("      Saran: \n\t- Perbanyak Minum Air Mineral"),nl.


%% Type Obesitas Sedang

    obesitassedang:-nl,
        write("      Apakah Anda Sering mengalami Sesak Nafas ?"),nl,
        readchar(One),write("      Jawab: ",One),nl,
        write("      Apakah Anda Sering mengalami stress ?"),nl,
        readchar(Two),write("      Jawab: ",Two),nl,
        write("      Apakah Anda Sering Merasa Pusing atau Sakit Kepala ?"),nl,
        readchar(Tree),write("      Jawab: ",Tree),nl,
        write("[*] - - - - - - - - - - - - - - - - - - - - - - - - Hasil & Saran - - - - - - - - - - - - - - - - - - - - - - - [*]"),nl,
        jawabsedang(One,Two,Tree).

%% Solusi Obesitas Sedang

    jawabsedang(One,Two,Tree):-
        noo(One),noo(Two),noo(Tree),saransedang1.

    jawabsedang(One,Two,Tree):-
        yes(One),yes(Two),yes(Tree),saransedang2.

    jawabsedang(One,Two,Tree):-
        yes(One),noo(Two),yes(Tree),saransedang3;
        noo(One),noo(Two),yes(Tree),saransedang3.

    jawabsedang(One,Two,Tree):-
        yes(One),yes(Two),noo(Tree),saransedang4;
        yes(One),noo(Two),noo(Tree),saransedang4.

    jawabsedang(One,Two,Tree):-
        noo(One),yes(Two),yes(Tree),saransedang5;
        noo(One),yes(Two),noo(Tree),saransedang5.

    jawabsedang(One,Two,Tree):-
        what(One),what(Two),what(Tree),salahsaran.

%% Saran Obesitas Sedang

    saransedang1:-
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Sedang"),nl.

    saransedang2:- 
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Sedang"),nl,
         write("      Saran: \n\t- Lakukan olahraga renang\n\t- Mengurangi makanan yang digoreng\n\t- Penuhi kebutuhan sayur dan buah"),nl.

    saransedang3:-
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Sedang"),nl,
         write("      Saran: \n\t- Lakukan aktivitas Fitness"),nl.

    saransedang4:-
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Sedang"),nl,
         write("      Saran: \n\t- Konsumsi Obat diet atau obat trandisional untuk menurunkan berat badan"),nl.

    saransedang5:-
        write("      Berdasarkan Data Yang Ada: \n\tAnda termasuk Obesitas dengan tingkat Sedang"),nl,
         write("      Saran: \n\t- Lakukan Olahraga di siang hari"),nl.


%% Type Obesitas Berat
    
    obesitasberat:-
        write("[*] - - - - - - - - - - - - - - - - - - - - - - - - Hasil & Saran - - - - - - - - - - - - - - - - - - - - - - - [*]"),nl,
        write("      Anda termasuk Obesitas Berat & Perlu Penanganan"),nl,
        write("      Saran: \n\t- Kunsultasi dengan dokter Spesialist Obesitas\n\t- melakukan terapi menurunkan lemak\n\t- Atau melakukan operasi sedot lemak"),nl.


%%  Salah Saran

    salahsaran:-nl,
        write("      Input Salah"),nl.

%% List Nama
    
    namegroup(anggota,["\tAbdul Kahar\n\t1515015110\n\tDr. Spesialist Tingkatan Obesitas\n\t","\tFernando Elda Pati\n\t15150i5115\n\tDr. Spesialist Data Obesitas\n\t","\tRulita Safitri \n\t1515015114\n\tDr. Spesialist Saran Obesitas\n\t","\tAhmad Zeka Renaldi\n\t1515015046\n\tDr. Spesialist Test Obesitas\n\t"]).

goal
    run.