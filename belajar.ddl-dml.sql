CREATE DATABASE sekolah;
 MariaDB [sekolah]> CREATE TABLE siswa ( nis CHAR(8) primary key, nama VARCHAR(100), jk CHAR(1), tmp_lahir VARCHAR(50), tgl_lahir DATE, alamat TEXT, kelas VARCHAR(10), nilai FLOAT);
Query OK, 0 rows affected (0.032 sec)
MariaDB [(none)]> USE sekolah;
Database changed
MariaDB [sekolah]> SHOW TABLES;
Empty set (0.001 sec)
MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| gavinn             |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
7 rows in set (0.033 sec)
MariaDB [sekolah]> DESCRIBE siswa;
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
8 rows in set (0.030 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES( '12100274', 'FIRDAUS WIGUNA', 'L', 'SUBANG', '2005-08-17', 'KALIJATI', '11 RPL 1', '70.97');
Query OK, 1 row affected (0.015 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES( '0061139014', 'SHABYAN DWI J', 'L', 'SUBANG', '2005-06-06', 'KALIJATI', '11 RPL 1', '70.98');
Query OK, 1 row affected, 1 warning (0.014 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES( '0061558876', 'MUTHIA ZAHRA RUKMANA', 'P', 'SUBANG', '2006-03-04', 'PALASARI', '11 RPL 1', '70.95');
Query OK, 1 row affected, 1 warning (0.014 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES( '12100249', 'FADHL GAVINDAFFA ABDULLAH', 'L', 'SUBANG', '2006-01-27', 'CIJAMBE', '11 RPL 1', '71.99');
Query OK, 1 row affected (0.013 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES( '100053', 'ALYA ELIDHIYA', 'P', 'SUBANG', '2006-04-16', 'PALASARI', '11 RPL 1', '70.96');
Query OK, 1 row affected (0.013 sec)
MariaDB [sekolah]> UPDATE siswa SET tgl_lahir="2005-05-05", alamat="BINONG" WHERE nis="12100274";
Query OK, 1 row affected (0.014 sec)
MariaDB [sekolah]> UPDATE siswa SET tmp_lahir="BANDUNG" WHERE nis="12100274";
Query OK, 1 row affected (0.013 sec)
Rows matched: 1  Changed: 1  Warnings: 0
MariaDB [sekolah]> SELECT * FROM siswa;
+----------+---------------------------+------+-----------+------------+----------+----------+-------+
| nis      | nama                      | jk   | tmp_lahir | tgl_lahir  | alamat   | kelas    | nilai |
+----------+---------------------------+------+-----------+------------+----------+----------+-------+
| 100053   | ALYA ELIDHIYA             | P    | SUBANG    | 2006-04-16 | PALASARI | 11 RPL 1 | 70.96 |
| 12100249 | FADHL GAVINDAFFA ABDULLAH | L    | SUBANG    | 2006-01-27 | CIJAMBE  | 11 RPL 1 | 71.99 |
| 12100274 | FIRDAUS WIGUNA            | L    | BANDUNG   | 2005-08-17 | KALIJATI | 11 RPL 1 | 70.97 |
| 12100497 | MUTHIA ZAHRA RUKMANA      | P    | SUBANG    | 2006-03-04 | PALASARI | 11 RPL 1 | 70.95 |
| 12100725 | SHABYAN DWI J             | L    | SUBANG    | 2005-06-06 | KALIJATI | 11 RPL 1 | 70.98 |
+----------+---------------------------+------+-----------+------------+----------+----------+-------+
5 rows in set (0.001 sec)

MariaDB [sekolah]> DELETE FROM siswa WHERE nis='12100274';
Query OK, 1 row affected (0.013 sec)