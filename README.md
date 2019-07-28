# Apotek-SQL

CARA MENGGUNAKAN DATABASE :

Jika melakukan pembelian anda silahkan : 
1. Pilih tabel faktur_penjualan
    a. isi no faktur penjualan, id karyawan, tanggal 
    b. jumlah pembelian, total, pajak, total bayar dibiarkan kosong
2. Pilih tabel faktur penjualan detail :
    a. pilih no faktur penjualan sama dengan no faktur penjualan yang membeli di tabel faktur penjualan tadi
    b. isi no faktur penjualan, id obat (yg dibeli), jumlah pembelian
    c. kosongkan id penjualan detail dan total pembelian
3. Jika melakukan pembelian 2 barang dalam 1 orang bisa mengulangi cara nomor 2 jika melakukan penyetokan barang anda silahkan :
    1) pilih tabel faktur_supply
         a. isi no supply, id karyawan, id supplier, tanggal 
         b. kosongkan total, pajak, dan total bayar
    2) pilih tabel faktur supply detail
         a. masukan id supply detail, no supply seperti yang anda buat di faktur suply, id obat, jumlah dan harga satuan
         b. kosongkan tabel harga total
    3) Jika melakukan penyuplian 2 barang dalam 1 supplier bisa mengulangi cara nomor 2 jika anda ingin melakukan penginputan pada pada
       tabel lain dipersilahkan dan tidak ada aturannya kecuali tabel log_obat karena tabel log_obat digunakan sebagai catetan jika ada
       pengubahan data kecurangan yang dilakukan oleh pegawai
