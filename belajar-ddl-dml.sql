CREATE DATABASE sekolah;
Query OK, 1 ROW affected (0.003 sec)

CREATE TABLE siswa(nis CHAR(8)primary key, nama VARCHAR(100), jk CHAR(1), tmp_lahir VARCHAR(50), tgl_lahir DATE, alamat TEXT, kelas VARCHAR(10), nilai FLOAT);
Query OK, 0 rows affected (0.017 sec)

USE sekolah
Database changed

DESCRIBE siswa;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| nis       | char(8)      | NO   | PRI | NULL    |       |
| nama      | varchar(100) | YES  |     | NULL    |       |
| jk        | char(1)      | YES  |     | NULL    |       |
| tmp_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.005 sec)

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| createdatabase     |
| haikal             |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
8 rows in set (0.010 sec)

INSERT INTO siswa values ('12100673', 'Rofi anugrah firdaus', 'L', 'china', '2005-04-21', 'surya cigadung', '11-RPL-1', '78');
Query OK, 1 row affected (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100700', 'Sandi adi pratama', 'L', 'florida', '2005-04-22', 'pagaden', '11-RPL-1', '79');
Query OK, 1 row affected (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100714', 'Selly rizki aprilia', 'P', 'korea utara', '2005-04-24', 'kalijati', '11-RPL-1', '67');
Query OK, 1 row affected (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100725', 'Shabyan dwi juan adriansyah', 'L', 'cikarang', '2005-11-22', 'cijambe', '11-RPL-1', '100');
Query OK, 1 row affected (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100778', 'Tasya amelia', 'P', 'mars', '2005-11-03', 'cijambe', '11-RPL-1', '30');
Query OK, 1 row affected (0.002 sec)

UPDATE siswa SET tgp_lahir="BANDUNG" WHERE nis="12100274";
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

UPDATE siswa SET tgl_lahir="2005-05-05", alamat="binong" WHERE nis="12100274";
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

DELETE FROM siswa where nis="12100274";
Query OK, 1 row affected (0.003 sec)

select * from siswa;
+----------+-----------------------------+------+-------------+------------+----------------+----------+-------+
| nis      | nama                        | jk   | tmp_lahir   | tgl_lahir  | alamat         | kelas    | nilai |
+----------+-----------------------------+------+-------------+------------+----------------+----------+-------+
| 12100022 | Aef aditiya                 | L    | Bandung     | 2005-11-17 | Tonggoh        | 11-RPL-1 | 75.05 |
| 12100053 | alya elidhiya               | p    | subang      | 2006-04-16 | subang         | 11-RPL-1 |  85.7 |
| 12100086 | Ariezto zucov               | L    | subang      | 2005-09-10 | kalijati       | 11-RPL-1 | 83.05 |
| 12100095 | Arzenna haqi muhammad       | L    | kalimantan  | 2005-01-01 | cijambe        | 11-RPL-1 |  60.5 |
| 12100098 | Asep rizki juliansah        | L    | jogja       | 2005-02-10 | subang         | 11-RPL-1 |    90 |
| 12100148 | David lutfi                 | L    | bandung     | 2006-12-01 | kalijati       | 11-RPL-1 |    70 |
| 12100217 | Eben hezer wangsa djaja     | L    | jakarta     | 2005-05-10 | kalijati       | 11-RPL-1 |    80 |
| 12100218 | Egan wiryawan               | L    | subang      | 2006-06-16 | Perum          | 11-RPL-1 |   100 |
| 12100219 | Egi renaldi                 | L    | subang      | 2005-10-23 | manyingsal     | 11-RPL-1 |  20.5 |
| 12100236 | Epi halimah                 | p    | bandung     | 2006-06-19 | subang         | 11-RPL-1 |    45 |
| 12100248 | Fadhl gavindaffa abdullah   | L    | bandung     | 2005-08-20 | tonggoh        | 11-RPL-1 |  55.5 |
| 12100268 | fariz fadli rafiudin        | L    | jogja       | 2005-06-22 | subang         | 11-RPL-1 |   100 |
| 12100274 | firdaus wiguna              | L    | Subang      | 2005-08-17 | Kalijati       | 11-RPL-1 | 70.97 |
| 12100281 | Galih akbar maulana         | L    | tangerang   | 2005-06-07 | cijambe        | 11-RPL-1 | 90.05 |
| 12100293 | haikal fadhilah ibrahim     | L    | Subang      | 2005-11-07 | subang         | 11-RPL-1 | 90.05 |
| 12100307 | hasbi dhiya farhansyah      | L    | bandung     | 2005-08-30 | pagaden        | 11-RPL-1 |    80 |
| 12100340 | Iqbal naufal hakim          | L    | makasar     | 2006-12-23 | cibinong       | 11-RPL-1 |    50 |
| 12100362 | kartika saridewi            | p    | subang      | 2005-08-02 | subang         | 11-RPL-1 |    95 |
| 12100410 | M Ikbal syahputra           | L    | kyoto       | 2007-01-01 | dawuan         | 11-RPL-1 |  70.5 |
| 12100419 | M dzaky firdaus             | L    | tokya       | 2005-01-01 | cigadung       | 11-RPL-1 | 63.75 |
| 12100452 | Mohamad indra erdin         | L    | pluto       | 2006-12-01 | pagaden        | 11-RPL-1 |    67 |
| 12100476 | Muhamad wahyudin syawali    | L    | kutub utara | 2005-01-23 | cijambe        | 11-RPL-1 |    75 |
| 12100497 | Muthia zahra rukmana        | P    | kahyangan   | 2006-01-23 | tonggoh        | 11-RPL-1 |    80 |
| 12100531 | Nazwa anggina               | P    | mars        | 2006-11-30 | dawuan         | 11-RPL-1 |    80 |
| 12100563 | Nurul eka maryana           | P    | korea utara | 2006-01-31 | dawuan         | 11-RPL-1 |    90 |
| 12100614 | Renaldi nurmazid            | L    | rusia       | 2005-11-30 | cijambe        | 11-RPL-1 |    97 |
| 12100662 | Rizki giant sepangga        | L    | China       | 2005-04-23 | cigadung       | 11-RPL-1 |    87 |
| 12100670 | Rizqi catur madani          | L    | Mesir       | 2005-04-23 | cigadung       | 11-RPL-1 |    77 |
| 12100673 | Rofi anugrah firdaus        | L    | china       | 2005-04-21 | surya cigadung | 11-RPL-1 |    78 |
| 12100700 | Sandi adi pratama           | L    | florida     | 2005-04-22 | pagaden        | 11-RPL-1 |    79 |
| 12100714 | Selly rizki aprilia         | P    | korea utara | 2005-04-24 | kalijati       | 11-RPL-1 |    67 |
| 12100725 | Shabyan dwi juan adriansyah | L    | cikarang    | 2005-11-22 | cijambe        | 11-RPL-1 |   100 |
| 12100778 | Tasya amelia                | P    | mars        | 2005-11-03 | cijambe        | 11-RPL-1 |    30 |
| 12100823 | Wananda dilla zahra         | P    | jupiter     | 2005-03-03 | kalijati       | 11-RPL-1 |    70 |
| 12100848 | Yufa gina maryafa           | P    | kalijati    | 2005-04-03 | pagaden        | 11-RPL-1 |    54 |
| 12100864 | Zunadea kusmiandita suntoro | L    | mars        | 2005-04-03 | pagaden        | 11-RPL-1 |    67 |
+----------+-----------------------------+------+-------------+------------+----------------+----------+-------+
36 rows in set (0.000 sec)