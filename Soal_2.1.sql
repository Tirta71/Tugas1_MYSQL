-- 1.	Download https://github.com/beekeeper-studio/beekeeper-studio/releases/tag/v3.8.9
-- 2.	Tampilkan seluruh data produk diurutkan berdasarkan harga_jual mulai dari yang termahal
SELECT * FROM produk ORDER BY harga_jual DESC;
-- +----+--------+-------------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
-- | id | kode   | nama              | harga_beli | harga_jual | stok | min_stok | foto                   | deskripsi                                                                                                                                                                                                           | jenis_produk_id |
-- +----+--------+-------------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
-- |  1 | TV01   | Televisi 21 inchs |    3500000 |   50500000 |    5 |        2 |                        | NULL                                                                                                                                                                                                                |               1 |
-- | 19 | TV0115 | Televisi 22 inc`  |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 20 | TV0116 | Televisi 23 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 21 | TV0117 | Televisi 24 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 22 | TV0118 | Televisi 25 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 24 | TV0120 | Televisi 27 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 25 | TV0121 | Televisi 28 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 26 | TV0122 | Televisi 29 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 11 | L005   | Laptop Lenovo     |   13000000 |   16000000 |    5 |        2 |                        | NULL                                                                                                                                                                                                                |               1 |
-- |  9 | LN01   | Notebook Lenovo   |    9000000 |   12480000 |    9 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               5 |
-- |  8 | AC01   | Notebook Acer S   |    8000000 |   11232000 |    7 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               5 |
-- |  6 | PC01   | PC Desktop HP     |    7000000 |    9984000 |    9 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               5 |
-- |  2 | TV02   | Televisi 40 inch  |    5500000 |    7440000 |    4 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |
-- | 18 | L0015  | Laptop Asus       |    3000000 |    5000000 |   10 |       20 | foto-65542ffa66604.jpg | NULL                                                                                                                                                                                                                |               1 |
-- |  3 | K001   | Kulkas 2 pintu    |    3500000 |    4680000 |    6 |        2 |                        | NULL                                                                                                                                                                                                                |               1 |
-- |  4 | M001   | Meja Makan        |     500000 |     600000 |    4 |        3 | NULL                   | NULL                                                                                                                                                                                                                |               2 |
-- | 15 | L112   | Kopi              |      20000 |      30000 |   10 |       15 | foto-15.png            | Luwak White Coffee merupakan bubuk biji kopi luwak yang dikombinasikan dengan gurihnya krimer serta manisnya gula. Keharuman kopi serta rasa manisnya yang pas juga membuat popularitas Luwak White Coffee melejit. |               4 |
-- | 16 | L113   | Teh Sosro 2       |      10000 |      15000 |   10 |       12 | .png                   | NULL                                                                                                                                                                                                                |               1 |
-- | 27 | THP001 | Teh Pucuk         |       4000 |       5000 |   10 |        2 | pucuk.jpg              | Teh pucuk adalah                                                                                                                                                                                                    |               4 |
-- | 28 | THP002 | Teh Pucuk2        |       4000 |       5000 |   10 |        2 | pucuk.jpg              | Teh pucuk adalah                                                                                                                                                                                                    |               4 |
-- |  5 | TK01   | Teh Kotak         |       3000 |       3500 |    6 |       10 | foto-5.png             | NULL                                                                                                                                                                                                                |               4 |
-- |  7 | TB01   | Teh Botol         |       2000 |       2500 |   53 |       10 | foto-7.jpg             | NULL                                                                                                                                                                                                                |               4 |
-- +----+--------+-------------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+

-- 3.	Tampilkan data kode, nama, tmp_lahir, tgl_lahir dari table pelanggan
Select kode, nama, tmp_lahir, tgl_lahir from pelanggan;
-- +-------+--------------------+------------+------------+
-- | kode  | nama               | tmp_lahir  | tgl_lahir  |
-- +-------+--------------------+------------+------------+
-- | C001  | Agung Sedayu Group | Solo       | 2010-01-01 |
-- | C002  | Pandan Wangi       | Yogyakarta | 1950-01-01 |
-- | C003  | Sekar Mirah        | Kediri     | 1983-02-20 |
-- | C004  | Swandaru Geni      | Kediri     | 1981-01-04 |
-- | C005  | Pradabashu         | Pati       | 1985-04-02 |
-- | C006  | Gayatri Dwi        | Jakarta    | 1987-11-28 |
-- | C007  | Dewi Gyat          | Jakarta    | 1988-12-01 |
-- | C008  | Andre Haru         | Surabaya   | 1990-07-15 |
-- | C009  | Ahmad Hasan        | Surabaya   | 1992-10-15 |
-- | C010  | Cassanndra         | Belfast    | 1990-11-20 |
-- | K0010 | Andi Wijaya        | Tangerang  | 2023-11-07 |
-- | K0011 | Ira                | Jakarta    | 2023-11-07 |
-- +-------+--------------------+------------+------------+

-- 4.	Tampilkan kode,nama,stok dari table produk yang stok-nya hanya 4
SELECT kode,nama, stok from produk WHERE stok=4;
-- +------+------------------+------+
-- | kode | nama             | stok |
-- +------+------------------+------+
-- | TV02 | Televisi 40 inch |    4 |
-- | M001 | Meja Makan       |    4 |
-- +------+------------------+------+

-- 5.	Tampilkan seluruh data pelanggan yang tempat lahirnya Jakarta
SELECT * from pelanggan WHERE tmp_lahir='jakarta';
-- +----+-------+-------------+----+-----------+------------+------------------+----------+
-- | id | kode  | nama        | jk | tmp_lahir | tgl_lahir  | email            | kartu_id |
-- +----+-------+-------------+----+-----------+------------+------------------+----------+
-- |  6 | C006  | Gayatri Dwi | P  | Jakarta   | 1987-11-28 | gaya87@gmail.com |        1 |
-- |  7 | C007  | Dewi Gyat   | P  | Jakarta   | 1988-12-01 | giyat@gmail.com  |        1 |
-- | 12 | K0011 | Ira         | P  | Jakarta   | 2023-11-07 | ira@gmail.com    |        4 |
-- +----+-------+-------------+----+-----------+------------+------------------+----------+


-- 6.	Tampilkan kode, nama, tmp_lahir, tgl_lahir dari pelanggan diurutkan dari yang paling muda usianya
SELECT kode, nama, tmp_lahir, tgl_lahir from pelanggan ORDER BY tgl_lahir DESC;
-- +-------+--------------------+------------+------------+
-- | kode  | nama               | tmp_lahir  | tgl_lahir  |
-- +-------+--------------------+------------+------------+
-- | K0011 | Ira                | Jakarta    | 2023-11-07 |
-- | K0010 | Andi Wijaya        | Tangerang  | 2023-11-07 |
-- | C001  | Agung Sedayu Group | Solo       | 2010-01-01 |
-- | C009  | Ahmad Hasan        | Surabaya   | 1992-10-15 |
-- | C010  | Cassanndra         | Belfast    | 1990-11-20 |
-- | C008  | Andre Haru         | Surabaya   | 1990-07-15 |
-- | C007  | Dewi Gyat          | Jakarta    | 1988-12-01 |
-- | C006  | Gayatri Dwi        | Jakarta    | 1987-11-28 |
-- | C005  | Pradabashu         | Pati       | 1985-04-02 |
-- | C003  | Sekar Mirah        | Kediri     | 1983-02-20 |
-- | C004  | Swandaru Geni      | Kediri     | 1981-01-04 |
-- | C002  | Pandan Wangi       | Yogyakarta | 1950-01-01 |
-- +-------+--------------------+------------+------------+