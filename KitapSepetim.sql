--create database KitapSepetim
--use KitapSepetim
--create table tblKitap(
--KitapID int identity(1,1) not null primary key,
--KitapAdi Nvarchar(15) not null,
--YazarAdi Nvarchar(20) not null,
--Kategori Nvarchar(15) not null,
--BrFiyat decimal(3,0) not null,
--YorumMetin Nvarchar(20) not null,
--YorumPuan decimal(2,0) not null)
--create table tblSiparis(
--SiparisID int identity(1,1) not null primary key,
--KargoFirma Nvarchar(12) not null,
--KargoTakip Nvarchar(15) not null,
--OdemeTur Nvarchar(12) not null,
--SiparisTarih datetime not null,
--KitapID int not null foreign key references tblKitap(KitapID),
--TeslimDurumu Nvarchar(15) not null,
--Adet decimal(1,0) not null,
--TopTutar decimal(3,0) not null,
--KampanyaKod char(10) not null,
--KampanyaInd decimal(2,0) not null)
create table tblMusteri(
MusteriID int identity(1,1) not null primary key,
MusteriAdi Nvarchar(20) not null,
MusteriSoyadi Nvarchar(20) not null,
MusteriTel decimal(7,0) not null,
MusteriAdres Nvarchar(20) not null,
SiparisID int not null foreign key references tblSiparis(SiparisID))