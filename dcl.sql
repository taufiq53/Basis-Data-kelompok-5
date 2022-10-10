
#Dcl

# Membuat user baru yaitu user dosen dan user mahasiswa, lalu set passwordnya
CREATE USER 'DosenTeknik'@'localhost' IDENTIFIED BY 'teknikBersatu';
CREATE USER 'Mahasiswa'@'localhost' IDENTIFIED BY 'Mahasiswa_';


# Memberi semua hak akses ke user
GRANT ALL PRIVILEGES ON *.*  TO 'DosenTeknik'@'localhost';
GRANT ALL PRIVILEGES ON *.*  TO 'Mahasiswa'@'localhost';


# Memberi akses tertentu (sebagai contoh akses SELECT) kepada semua user
GRANT SELECT 
ON *.*
TO '*'@'localhost';

# Menampilkan status hak akses user
SHOW GRANTS FOR 'DosenTeknik'@'localhost';

# Menghapus hak akses user
REVOKE CREATE, DROP 
ON *.*
TO 'DosenTeknik'@'localhost';

# Menghapus akses tertentu (sebagai contoh akses DROP) kepada semua user
REVOKE DROP  
ON *.*
TO '*'@'localhost';
