create database Data_Mart_hopital

use Data_Mart_hopital

create table Dim_PERSONNE(
	id int primary key,
	nom varchar(20),
	tel bigint,
	adresse varchar(50),
	sexe char(1)
)

create table Dim_MEDECIN (
	id int primary key,
	tel bigint,
	adresse varchar(50),
	specialite varchar(50)
)

create table Fait_CONSULTATION (
	id_med int,
	id_pers int,
	foreign key(id_med) references Dim_MEDECIN(id),
	foreign key(id_pers) references Dim_PERSONNE(id),
	NbrConsultation int
)


delete from Dim_PERSONNE
delete from Dim_MEDECIN
delete from Fait_CONSULTATION
