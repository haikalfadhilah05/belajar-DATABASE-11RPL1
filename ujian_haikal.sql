CREATE DATABASE ujian_haikal;

CREATE TABLE tb_obat (`kode_obat`,`nama_obat`,`jenis`,`satuan`,`stok`,`harga_beli`,`harga_jual`);

INSERT INTO `tb_obat` (`kode_obat`,`nama_obat`,`jenis`,`satuan`,`stok`,`harga_beli`,`harga_jual`) VALUES 
('K001','Allerin 120cc','Obat terbatas','Botol','50','20000','22000');
('K002','Becombion 110ml','Obat Bebas','Botol','10','15000','16000');
('K003','Becombion 60ml','Obat Bebas','Botol','5','8000','9000'), 
('K004','Betadine Vag Plus','Obat Bebas','Botol','12','12000','13000'), 
('K005','Komix','Obat Bebas','Lembar','50','4500','5000'), 
('K006','Diazepam','Obat keras','Tablet','4','55000','60000'), 
('K007','CTM','Obat Bebas','Tablet','3','70000','75000'),
('K008','Amoxicilin','Obat Terbatas','Tablet','74','975','1100'),
('K009','Antimo','Obat Bebas','Tablet','2','5100','6000'),
('K010','Parasetamol','Obat Bebas','Strips','100','3000','4000');

SELECT * FROM `tb_obat`;

SELECT * FROM `tb_obat` WHERE jenis = 'Obat Terbatas';

SELECT * FROM `tb_obat` WHERE stok > 50 ORDER BY stok DESC;

SELECT * FROM `tb_obat` WHERE nama_obat LIKE '%Becombion%';

SELECT jenis, COUNT(jenis) AS obat_bebas FROM `tbl_obat` WHERE jenis = 'obat bebas' GROUP BY jenis;

UPDATE `tb_obat` SET `stok` = '10' WHERE `tb_obat`.`kode_obat` = 'K007';

SELECT * FROM `tb_obat` WHERE jenis = 'Obat bebas' AND satuan = 'botol';

SELECT harga_beli, AVG(harga_beli)AS rerata_harga FROM `tb_obat` GROUP BY jenis = 'obat terbatas';

('K011','Paramex','Obat Bebas','lembar','14','4000','5000');
SELECT * FROM `tb_obat` WHERE nama_obat = 'Paramex';

SELECT jenis, SUM(stok) AS stok_total FROM `tb_obat` GROUP BY jenis

DELETE FROM `tb_obat` WHERE kode_obat = 'K005';

SELECT * FROM `tb_obat` WHERE nama_obat LIKE 'a%';

SELECT satuan FROM `tb_obat` GROUP BY setuan;

SELECT * FROM `tb_obat` WHERE harga_beli BETWEEN 10000 AND 20000;

ALTER TABLE tb_obat RENAME tbl_obat;

SELECT * FROM `tbl_obat` WHERE nama_obat LIKE '%mo%' AND stok > 10;