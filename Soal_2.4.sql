-- SOAL_2.4
1.	Tampilkan 2 data produk termahal
SELECT *FROM produk ORDER BY harga_beli DESC LIMIT 2;
+----+------+-----------------+------------+------------+------+----------+------+-----------+-----------------+
| id | kode | nama            | harga_beli | harga_jual | stok | min_stok | foto | deskripsi | jenis_produk_id |
+----+------+-----------------+------------+------------+------+----------+------+-----------+-----------------+
| 11 | L005 | Laptop Lenovo   |   13000000 |   16000000 |    5 |        2 |      | NULL      |               1 |
|  9 | LN01 | Notebook Lenovo |    9000000 |   12480000 |    9 |        2 | NULL | NULL      |               5 |
+----+------+-----------------+------------+------------+------+----------+------+-----------+-----------------+

2.	Tampilkan produk yang paling murah
SELECT * FROM produk WHERE harga_jual = (SELECT MIN(harga_jual) FROM produk);
+----+------+-----------+------------+------------+------+----------+------------+-----------+-----------------+
| id | kode | nama      | harga_beli | harga_jual | stok | min_stok | foto       | deskripsi | jenis_produk_id |
+----+------+-----------+------------+------------+------+----------+------------+-----------+-----------------+
|  7 | TB01 | Teh Botol |       2000 |       2500 |   53 |       10 | foto-7.jpg | NULL      |               4 |
+----+------+-----------+------------+------------+------+----------+------------+-----------+-----------------+

3.	Tampilkan produk yang stoknya paling banyak
SELECT * FROM produk WHERE stok = (SELECT MAX(stok) FROM produk);
+----+------+-----------+------------+------------+------+----------+------------+-----------+-----------------+
| id | kode | nama      | harga_beli | harga_jual | stok | min_stok | foto       | deskripsi | jenis_produk_id |
+----+------+-----------+------------+------------+------+----------+------------+-----------+-----------------+
|  7 | TB01 | Teh Botol |       2000 |       2500 |   53 |       10 | foto-7.jpg | NULL      |               4 |
+----+------+-----------+------------+------------+------+----------+------------+-----------+-----------------+

4.	Tampilkan dua produk yang stoknya paling sedikit
SELECT * FROM produk ORDER BY stok LIMIT 2;
+----+------+------------------+------------+------------+------+----------+------+-----------+-----------------+
| id | kode | nama             | harga_beli | harga_jual | stok | min_stok | foto | deskripsi | jenis_produk_id |
+----+------+------------------+------------+------------+------+----------+------+-----------+-----------------+
|  2 | TV02 | Televisi 40 inch |    5500000 |    7440000 |    4 |        2 | NULL | NULL      |               1 |
|  4 | M001 | Meja Makan       |     500000 |     600000 |    4 |        3 | NULL | NULL      |               2 |
+----+------+------------------+------------+------------+------+----------+------+-----------+-----------------+

5.	Tampilkan pelanggan yang paling muda
SELECT * FROM pelanggan ORDER BY tgl_lahir DESC LIMIT 1;
+----+-------+------+----+-----------+------------+---------------+----------+
| id | kode  | nama | jk | tmp_lahir | tgl_lahir  | email         | kartu_id |
+----+-------+------+----+-----------+------------+---------------+----------+
| 12 | K0011 | Ira  | P  | Jakarta   | 2023-11-07 | ira@gmail.com |        4 |
+----+-------+------+----+-----------+------------+---------------+----------+

6.	Tampilkan pelanggan yang paling tua
SELECT * FROM pelanggan ORDER BY tgl_lahir ASC LIMIT 1;
+----+------+--------------+----+------------+------------+-----------------+----------+
| id | kode | nama         | jk | tmp_lahir  | tgl_lahir  | email           | kartu_id |
+----+------+--------------+----+------------+------------+-----------------+----------+
|  2 | C002 | Pandan Wangi | P  | Yogyakarta | 1950-01-01 | wangi@gmail.com |        2 |
+----+------+--------------+----+------------+------------+-----------------+----------+
