-- Membuat Database
CREATE DATABASE tokoBangunan;

-- Menggunakan Database
USE tokoBangunan;

-- Membuat Tabel tbKategori_barang
CREATE TABLE tbKategori_barang (
    idKategori VARCHAR(6) PRIMARY KEY,
    namaKategori VARCHAR(255)
);

-- Membuat Tabel tbBarang
CREATE TABLE tbBarang (
    idBarang VARCHAR(6) PRIMARY KEY,
    namaBarang VARCHAR(255),
    hargaBarang INT,
    stokBarang INT,
    idKategori VARCHAR(6) Foreign key references tbKategori_barang(idKategori)
);

-- Membuat Tabel tbPelanggan
CREATE TABLE tbPelanggan (
    idPelanggan VARCHAR(6) PRIMARY KEY,
    namaPelanggan VARCHAR(255),
    telepon VARCHAR(20),
    email VARCHAR(255),
    alamat VARCHAR(255)
);

-- Membuat Tabel tbPesanan
CREATE TABLE tbPesanan (
    idPesanan VARCHAR(6) PRIMARY KEY,
    idPelanggan VARCHAR(6) Foreign key references tbPelanggan(idPelanggan),
    tanggalPesanan DATE,
    totalHarga INT
);

-- Membuat Tabel tbPenjualan
CREATE TABLE tbPenjualan (
    idPenjualan VARCHAR(6) PRIMARY KEY,
    idPesanan VARCHAR(6) Foreign key references tbPesanan(idPesanan),
    idPelanggan VARCHAR(6) Foreign key references tbPelanggan(idPelanggan),
    idBarang VARCHAR(6) Foreign key references tbbarang(idBarang),
    jumlah INT,
    totalHarga INT
);

-- Membuat Tabel tbKaryawan
CREATE TABLE tbKaryawan (
    idKaryawan VARCHAR(6) PRIMARY KEY,
    username VARCHAR(50),
    passwd VARCHAR(50),
    namaKaryawan VARCHAR(255)
);

Insert into tbKaryawan values ('KRY001', 'admin1', 'admin123', 'Samsul')
