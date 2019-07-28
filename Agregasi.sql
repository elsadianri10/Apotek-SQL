CREATE DATABASE `AGREGASI`;

USE AGREGASI;

create table Ujian(
	no_peserta int not null auto_increment,
	nama_peserta varchar(50) not null,
	nilai_ujian int not null,
	primary key(no_peserta)
);

insert into
	Ujian(nama_peserta, nilai_ujian)
		Values('Naufal', 80),
				('Farman', 60),
				('Esa', 55),
				('Nadif', 65),
				('Rama', 70),
				('Pandu', 50),
				('Adit', 75),
				('Arvi', 65);

#nomor 1				
Select max(nilai_ujian) From Ujian;

#nomor 2			
Select min(nilai_ujian) From Ujian;

#nomor 3
Select count(*) as Peserta_Lulus from ujian,
	(select avg(nilai_ujian) as Rataan from ujian) Peserta
		where nilai_ujian >= Peserta.Rataan;

#nomor 4
Select * From Ujian Order BY nilai_ujian asc Limit 2;

create table Atlet(
	id_atlet int not null auto_increment,
	nama_atlet varchar(50) not null,
	asal_daerah char(50),
	gender char(2),
	primary key(id_atlet)
);

insert into
	Atlet(nama_atlet, asal_daerah, gender)
		Values('Budi Riandi', 'DI Yogyakarta', 'L'),
				('Susi Susanti', 'DKI Jakarta', 'P'),
				('Febrianti', 'Surabaya', 'P'),
				('Perdana Anwar', 'Sumatera Barat', 'L'),
				('Ani Wartiningsih', 'DI Yogyakarta', 'P'),
				('Firmansyah', 'Surabaya', 'L'),
				('Cahyo Hidayat', 'DI Yogyakarta', 'L'),
				('Adi Putra', 'DI Yogyakarta', 'L'),
				('Okta Ashriza', 'Sumatera Barat', 'P');

#nomor 1
Select asal_daerah, count(asal_daerah) as daerah 
	From Atlet
		group by asal_daerah limit 1;
		
#nomor 2
Select count(distinct asal_daerah) as daerah 
	From Atlet;
	
#nomor 3
Select asal_daerah, count(asal_daerah) as daerah 
	From Atlet
		group by asal_daerah
		having daerah > 1;

#nomor 4
Select asal_daerah, sum(gender = 'L') as gender_laki, sum(gender = 'P') as gender_wanita
	From Atlet
		group by asal_daerah
			order by gender;
			
#nomor 5
Select asal_daerah, 
	case when sum(gender = 'L') < sum(gender = 'P') then 'L'
		when sum(gender = 'L') > sum(gender = 'P') then 'P'
		else 'L dan P'
		end as gender_terkecil
	From Atlet
		group by asal_daerah
			order by gender;

#nomor 6
Select asal_daerah, count(asal_daerah) as daerah 
	From Atlet
		group by asal_daerah 
			order by daerah desc;