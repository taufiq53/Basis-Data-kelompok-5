
#Dcl

# Buat user baru dan set passwordnya
CREATE USER 'DosenTeknik'@'localhost' IDENTIFIED BY 'teknikBersatu';

# Beri hak akses ke user 
GRANT CREATE, DROP, SELECT, INSERT, DELETE, UPDATE 
ON kelompok5
TO 'DosenTeknik'@'localhost';

#beri semua hak  akses ke user
grant all privileges on *.*  to 'DosenTeknik'@'localhost';


# Beri akses tertentu (misal akses SELECT) kepada semua user
GRANT SELECT 
ON kelompok5
TO '*'@'localhost';

# Cek status hak akses user
SHOW GRANTS FOR 'DosenTeknik'@'localhost';

# Hapus hak akses user
REVOKE CREATE, DROP 
ON kelompok5
TO 'DosenTeknik'@'localhost';

# Hapus akses tertentu (misal akses DROP) kepada semua user
REVOKE DROP  
ON kelompok5
TO '*'@'localhost';
