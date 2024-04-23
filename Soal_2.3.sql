-- Soal_2.3
-- 1.	Tampilkan produk yang kode awalnya huruf K dan huruf M
SELECT * FROM produk WHERE kode LIKE 'K%' OR kode LIKE 'M%';

-- +----+------+----------------+------------+------------+------+----------+------+-----------+-----------------+
-- | id | kode | nama           | harga_beli | harga_jual | stok | min_stok | foto | deskripsi | jenis_produk_id |
-- +----+------+----------------+------------+------------+------+----------+------+-----------+-----------------+
-- |  3 | K001 | Kulkas 2 pintu |    3500000 |    4680000 |    6 |        2 |      | NULL      |               1 |
-- |  4 | M001 | Meja Makan     |     500000 |     600000 |    4 |        3 | NULL | NULL      |               2 |
-- +----+------+----------------+------------+------------+------+----------+------+-----------+-----------------+

-- 2.	Tampilkan produk yang kode awalnya bukan huruf M
SELECT * FROM produk WHERE LEFT(kode, 1) NOT IN ('M');

-- +----+--------+-------------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
-- | id | kode   | nama              | harga_beli | harga_jual | stok | min_stok | foto                   | deskripsi                                                                                                                                                                                                           | jenis_produk_id |
-- +----+--------+-------------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
-- |  1 | TV01   | Televisi 21 inchs |    3500000 |   50500000 |    5 |        2 |                        | NULL                                                                                                                                                                                                                |               1 |
-- |  2 | TV02   | Televisi 40 inch  |    5500000 |    7440000 |    4 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- |  3 | K001   | Kulkas 2 pintu    |    3500000 |    4680000 |    6 |        2 |                        | NULL                                                                                                                                                                                                                |               1 |
-- |  5 | TK01   | Teh Kotak         |       3000 |       3500 |    6 |       10 | foto-5.png             | NULL                                                                                                                                                                                                                |               4 |
-- |  6 | PC01   | PC Desktop HP     |    7000000 |    9984000 |    9 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               5 |
-- |  7 | TB01   | Teh Botol         |       2000 |       2500 |   53 |       10 | foto-7.jpg             | NULL                                                                                                                                                                                                                |               4 |
-- |  8 | AC01   | Notebook Acer S   |    8000000 |   11232000 |    7 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               5 |
-- |  9 | LN01   | Notebook Lenovo   |    9000000 |   12480000 |    9 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               5 |
-- | 11 | L005   | Laptop Lenovo     |   13000000 |   16000000 |    5 |        2 |                        | NULL                                                                                                                                                                                                                |               1 |
-- | 15 | L112   | Kopi              |      20000 |      30000 |   10 |       15 | foto-15.png            | Luwak White Coffee merupakan bubuk biji kopi luwak yang dikombinasikan dengan gurihnya krimer serta manisnya gula. Keharuman kopi serta rasa manisnya yang pas juga membuat popularitas Luwak White Coffee melejit. |               4 |
-- | 16 | L113   | Teh Sosro 2       |      10000 |      15000 |   10 |       12 | .png                   | NULL                                                                                                                                                                                                                |               1 |
-- | 18 | L0015  | Laptop Asus       |    3000000 |    5000000 |   10 |       20 | foto-65542ffa66604.jpg | NULL                                                                                                                                                                                                                |               1 |
-- | 19 | TV0115 | Televisi 22 inc`  |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 20 | TV0116 | Televisi 23 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 21 | TV0117 | Televisi 24 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 22 | TV0118 | Televisi 25 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 24 | TV0120 | Televisi 27 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 25 | TV0121 | Televisi 28 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 26 | TV0122 | Televisi 29 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 27 | THP001 | Teh Pucuk         |       4000 |       5000 |   10 |        2 | pucuk.jpg              | Teh pucuk adalah                                                                                                                                                                                                    |               4 |
-- | 28 | THP002 | Teh Pucuk2        |       4000 |       5000 |   10 |        2 | pucuk.jpg              | Teh pucuk adalah                                                                                                                                                                                                    |               4 |
-- +----+--------+-------------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+


-- 3.	Tampilkan produk-produk televisi
SELECT * FROM produk WHERE nama LIKE '%Televisi%';

-- +----+--------+-------------------+------------+------------+------+----------+------+-----------+-----------------+
-- | id | kode   | nama              | harga_beli | harga_jual | stok | min_stok | foto | deskripsi | jenis_produk_id |
-- +----+--------+-------------------+------------+------------+------+----------+------+-----------+-----------------+
-- |  1 | TV01   | Televisi 21 inchs |    3500000 |   50500000 |    5 |        2 |      | NULL      |               1 |
-- |  2 | TV02   | Televisi 40 inch  |    5500000 |    7440000 |    4 |        2 | NULL | NULL      |               1 |
-- | 19 | TV0115 | Televisi 22 inc`  |    3500000 |   50500000 |    5 |        2 | NULL | NULL      |               1 |
-- | 20 | TV0116 | Televisi 23 inc   |    3500000 |   50500000 |    5 |        2 | NULL | NULL      |               1 |
-- | 21 | TV0117 | Televisi 24 inc   |    3500000 |   50500000 |    5 |        2 | NULL | NULL      |               1 |
-- | 22 | TV0118 | Televisi 25 inc   |    3500000 |   50500000 |    5 |        2 | NULL | NULL      |               1 |
-- | 24 | TV0120 | Televisi 27 inc   |    3500000 |   50500000 |    5 |        2 | NULL | NULL      |               1 |
-- | 25 | TV0121 | Televisi 28 inc   |    3500000 |   50500000 |    5 |        2 | NULL | NULL      |               1 |
-- | 26 | TV0122 | Televisi 29 inc   |    3500000 |   50500000 |    5 |        2 | NULL | NULL      |               1 |
-- +----+--------+-------------------+------------+------------+------+----------+------+-----------+-----------------+

-- 4.	Tampilkan pelanggan mengandung huruf 'SA'
SELECT * FROM pelanggan WHERE nama LIKE '%SA%';

-- +----+------+-------------+----+-----------+------------+------------------+----------+
-- | id | kode | nama        | jk | tmp_lahir | tgl_lahir  | email            | kartu_id |
-- +----+------+-------------+----+-----------+------------+------------------+----------+
-- |  9 | C009 | Ahmad Hasan | L  | Surabaya  | 1992-10-15 | ahasan@gmail.com |        4 |
-- | 10 | C010 | Cassanndra  | P  | Belfast   | 1990-11-20 | casa90@gmail.com |        1 |
-- +----+------+-------------+----+-----------+------------+------------------+----------+

-- 5.	Tampilkan pelanggan yang lahirnya bukan di Jakarta dan mengandung huruf ‘yo‘
SELECT * FROM pelanggan WHERE tmp_lahir NOT LIKE '%Jakarta%' AND nama LIKE '%yo%';



-- 6.	Tampilkan pelanggan yang karakter huruf ke – 2 nya adalah A
SELECT * FROM pelanggan WHERE SUBSTRING(nama, 2, 1) = 'A';

-- +----+------+--------------+----+------------+------------+------------------+----------+
-- | id | kode | nama         | jk | tmp_lahir  | tgl_lahir  | email            | kartu_id |
-- +----+------+--------------+----+------------+------------+------------------+----------+
-- |  2 | C002 | Pandan Wangi | P  | Yogyakarta | 1950-01-01 | wangi@gmail.com  |        2 |
-- |  6 | C006 | Gayatri Dwi  | P  | Jakarta    | 1987-11-28 | gaya87@gmail.com |        1 |
-- | 10 | C010 | Cassanndra   | P  | Belfast    | 1990-11-20 | casa90@gmail.com |        1 |
-- +----+------+--------------+----+------------+------------+------------------+----------+