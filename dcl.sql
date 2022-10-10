create user 'dosen'@'localhost' identified by 'dosen_';
create user 'mahasiswa'@'localhost' identified by 'mahasiswa_';

grant all privileges on *.*  to 'dosen'@'localhost';
grant all privileges on *.*  to 'mahasiswa'@'localhost';
