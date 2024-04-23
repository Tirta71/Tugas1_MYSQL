-- Soal_2.2
-- 1.	Tampilkan data produk yang stoknya 3 dan 10
SELECT * from produk WHERE stok=3 OR stok=10;
-- +----+--------+-------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
-- | id | kode   | nama        | harga_beli | harga_jual | stok | min_stok | foto                   | deskripsi                                                                                                                                                                                                           | jenis_produk_id |
-- +----+--------+-------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
-- | 15 | L112   | Kopi        |      20000 |      30000 |   10 |       15 | foto-15.png            | Luwak White Coffee merupakan bubuk biji kopi luwak yang dikombinasikan dengan gurihnya krimer serta manisnya gula. Keharuman kopi serta rasa manisnya yang pas juga membuat popularitas Luwak White Coffee melejit. |               4 |
-- | 16 | L113   | Teh Sosro 2 |      10000 |      15000 |   10 |       12 | .png                   | NULL                                                                                                                                                                                                                |               1 |
-- | 18 | L0015  | Laptop Asus |    3000000 |    5000000 |   10 |       20 | foto-65542ffa66604.jpg | NULL                                                                                                                                                                                                                |               1 |
-- | 27 | THP001 | Teh Pucuk   |       4000 |       5000 |   10 |        2 | pucuk.jpg              | Teh pucuk adalah                                                                                                                                                                                                    |               4 |
-- | 28 | THP002 | Teh Pucuk2  |       4000 |       5000 |   10 |        2 | pucuk.jpg              | Teh pucuk adalah                                                                                                                                                                                                    |               4 |
-- +----+--------+-------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+

-- 2.	Tampilkan data produk yang harga jualnya kurang dari 5 juta tetapi lebih dari 500 ribu
SELECT * FROM produk WHERE harga_jual < 5000000 AND harga_jual > 500000;
-- +----+------+----------------+------------+------------+------+----------+------+-----------+-----------------+
-- | id | kode | nama           | harga_beli | harga_jual | stok | min_stok | foto | deskripsi | jenis_produk_id |
-- +----+------+----------------+------------+------------+------+----------+------+-----------+-----------------+
-- |  3 | K001 | Kulkas 2 pintu |    3500000 |    4680000 |    6 |        2 |      | NULL      |               1 |
-- |  4 | M001 | Meja Makan     |     500000 |     600000 |    4 |        3 | NULL | NULL      |               2 |
-- +----+------+----------------+------------+------------+------+----------+------+-----------+-----------------+

-- 3.	Tampilkan data produk yang harus segera ditambah stoknya
SELECT * FROM produk WHERE min_stok > stok;

-- +----+-------+-------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
-- | id | kode  | nama        | harga_beli | harga_jual | stok | min_stok | foto                   | deskripsi                                                                                                                                                                                                           | jenis_produk_id |
-- +----+-------+-------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
-- |  5 | TK01  | Teh Kotak   |       3000 |       3500 |    6 |       10 | foto-5.png             | NULL                                                                                                                                                                                                                |               4 |
-- | 15 | L112  | Kopi        |      20000 |      30000 |   10 |       15 | foto-15.png            | Luwak White Coffee merupakan bubuk biji kopi luwak yang dikombinasikan dengan gurihnya krimer serta manisnya gula. Keharuman kopi serta rasa manisnya yang pas juga membuat popularitas Luwak White Coffee melejit. |               4 |
-- | 16 | L113  | Teh Sosro 2 |      10000 |      15000 |   10 |       12 | .png                   | NULL                                                                                                                                                                                                                |               1 |
-- | 18 | L0015 | Laptop Asus |    3000000 |    5000000 |   10 |       20 | foto-65542ffa66604.jpg | NULL                                                                                                                                                                                                                |               1 |
-- +----+-------+-------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+

-- 4.	Tampilkan data pelanggan mulai dari yang paling muda
SELECT * FROM pelanggan ORDER BY tgl_lahir DESC;

-- +----+-------+--------------------+----+------------+------------+----------------------+----------+
-- | id | kode  | nama               | jk | tmp_lahir  | tgl_lahir  | email                | kartu_id |
-- +----+-------+--------------------+----+------------+------------+----------------------+----------+
-- | 12 | K0011 | Ira                | P  | Jakarta    | 2023-11-07 | ira@gmail.com        |        4 |
-- | 11 | K0010 | Andi Wijaya        | L  | Tangerang  | 2023-11-07 | andi@gmail.com       |        2 |
-- |  1 | C001  | Agung Sedayu Group | L  | Solo       | 2010-01-01 | sedayu@gmail.com     |        1 |
-- |  9 | C009  | Ahmad Hasan        | L  | Surabaya   | 1992-10-15 | ahasan@gmail.com     |        4 |
-- | 10 | C010  | Cassanndra         | P  | Belfast    | 1990-11-20 | casa90@gmail.com     |        1 |
-- |  8 | C008  | Andre Haru         | L  | Surabaya   | 1990-07-15 | andre.haru@gmail.com |        4 |
-- |  7 | C007  | Dewi Gyat          | P  | Jakarta    | 1988-12-01 | giyat@gmail.com      |        1 |
-- |  6 | C006  | Gayatri Dwi        | P  | Jakarta    | 1987-11-28 | gaya87@gmail.com     |        1 |
-- |  5 | C005  | Pradabashu         | L  | Pati       | 1985-04-02 | prada85@gmail.com    |        2 |
-- |  3 | C003  | Sekar Mirah        | P  | Kediri     | 1983-02-20 | mirah@yahoo.com      |        1 |
-- |  4 | C004  | Swandaru Geni      | L  | Kediri     | 1981-01-04 | swandaru@yahoo.com   |        4 |
-- |  2 | C002  | Pandan Wangi       | P  | Yogyakarta | 1950-01-01 | wangi@gmail.com      |        2 |
-- +----+-------+--------------------+----+------------+------------+----------------------+----------+

-- 5.	Tampilkan data pelanggan yang lahirnya di Jakarta dan gendernya perempuan
SELECT * FROM pelanggan WHERE tmp_lahir='jakarta' AND jk='P';

-- +----+-------+-------------+----+-----------+------------+------------------+----------+
-- | id | kode  | nama        | jk | tmp_lahir | tgl_lahir  | email            | kartu_id |
-- +----+-------+-------------+----+-----------+------------+------------------+----------+
-- |  6 | C006  | Gayatri Dwi | P  | Jakarta   | 1987-11-28 | gaya87@gmail.com |        1 |
-- |  7 | C007  | Dewi Gyat   | P  | Jakarta   | 1988-12-01 | giyat@gmail.com  |        1 |
-- | 12 | K0011 | Ira         | P  | Jakarta   | 2023-11-07 | ira@gmail.com    |        4 |
-- +----+-------+-------------+----+-----------+------------+------------------+----------+

-- 6.	Tampilkan data pelanggan yang ID nya 2, 4 dan 6
SELECT * from pelanggan WHERE id IN (2,4,6);

-- +----+------+---------------+----+------------+------------+--------------------+----------+
-- | id | kode | nama          | jk | tmp_lahir  | tgl_lahir  | email              | kartu_id |
-- +----+------+---------------+----+------------+------------+--------------------+----------+
-- |  2 | C002 | Pandan Wangi  | P  | Yogyakarta | 1950-01-01 | wangi@gmail.com    |        2 |
-- |  4 | C004 | Swandaru Geni | L  | Kediri     | 1981-01-04 | swandaru@yahoo.com |        4 |
-- |  6 | C006 | Gayatri Dwi   | P  | Jakarta    | 1987-11-28 | gaya87@gmail.com   |        1 |
-- +----+------+---------------+----+------------+------------+--------------------+----------+

-- 7.	Tampilkan data produk yang harganya antara 500 ribu sampai 6 juta
SELECT * FROM produk WHERE harga_jual >= 500000 AND harga_jual<= 6000000;

-- +----+-------+----------------+------------+------------+------+----------+------------------------+-----------+-----------------+
-- | id | kode  | nama           | harga_beli | harga_jual | stok | min_stok | foto                   | deskripsi | jenis_produk_id |
-- +----+-------+----------------+------------+------------+------+----------+------------------------+-----------+-----------------+
-- |  3 | K001  | Kulkas 2 pintu |    3500000 |    4680000 |    6 |        2 |                        | NULL      |               1 |
-- |  4 | M001  | Meja Makan     |     500000 |     600000 |    4 |        3 | NULL                   | NULL      |               2 |
-- | 18 | L0015 | Laptop Asus    |    3000000 |    5000000 |   10 |       20 | foto-65542ffa66604.jpg | NULL      |               1 |
-- +----+-------+----------------+------------+------------+------+----------+------------------------+-----------+-----------------+