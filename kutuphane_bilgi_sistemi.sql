-- SQL ifadelerinizi buraya yazınız.

CREATE TABLE `tur`(
    `turno` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `turadi` VARCHAR(20) NOT NULL
);
ALTER TABLE
    `tur` ADD PRIMARY KEY `tur_turno_primary`(`turno`);
CREATE TABLE `kitap`(
    `kitapno` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `kitapadi` VARCHAR(50) NOT NULL,
    `sayfasayisi` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `puan` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `yazarno` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `turno` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT
);
ALTER TABLE
    `kitap` ADD PRIMARY KEY `kitap_kitapno_primary`(`kitapno`);
CREATE TABLE `islem`(
    `islemno` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `ogrno` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `kitapno` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `atarih` VARCHAR(20) NOT NULL,
    `vtarih` VARCHAR(20) NOT NULL
);
ALTER TABLE
    `islem` ADD PRIMARY KEY `islem_islemno_primary`(`islemno`);
CREATE TABLE `ogrenci`(
    `ogrno` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `ograd` VARCHAR(50) NOT NULL,
    `ogrsoyad` VARCHAR(50) NOT NULL,
    `dtarih` VARCHAR(20) NOT NULL,
    `cinsiyet` VARCHAR(1) NOT NULL,
    `sinif` VARCHAR(50) NOT NULL,
    `puan` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT
);
ALTER TABLE
    `ogrenci` ADD PRIMARY KEY `ogrenci_ogrno_primary`(`ogrno`);
CREATE TABLE `yazar`(
    `yazarno` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `yazarad` VARCHAR(30) NOT NULL,
    `yazarsoyad` VARCHAR(30) NOT NULL
);
ALTER TABLE
    `yazar` ADD PRIMARY KEY `yazar_yazarno_primary`(`yazarno`);
ALTER TABLE
    `islem` ADD CONSTRAINT `islem_kitapno_foreign` FOREIGN KEY(`kitapno`) REFERENCES `kitap`(`kitapno`);
ALTER TABLE
    `kitap` ADD CONSTRAINT `kitap_yazarno_foreign` FOREIGN KEY(`yazarno`) REFERENCES `yazar`(`yazarno`);
ALTER TABLE
    `kitap` ADD CONSTRAINT `kitap_turno_foreign` FOREIGN KEY(`turno`) REFERENCES `tur`(`turno`);
ALTER TABLE
    `islem` ADD CONSTRAINT `islem_ogrno_foreign` FOREIGN KEY(`ogrno`) REFERENCES `ogrenci`(`ogrno`);