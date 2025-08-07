create database analisis_konservasi

CREATE TABLE regulatory_permits(
permit_id varchar(20) primary key,
conservation_id varchar(20),
permit_type varchar(100),
authority varchar(100),
approval_date date,
permit_status varchar(50)
)

drop table regulatory_permits

create table land_tenure_records (
tenure_id varchar(20) primary key,
conservation_id varchar(20),
land_type varchar(50),
owner varchar(50),
legal_document varchar(50),
boundary_defined varchar(20)
)

create table biodiversity_monitoring (
bio_id varchar(20) primary key,
conservation_id varchar(20),
species_count integer,
tree_density integer,
water_quality varchar(50),
assesment_date date
)

create table funding_sources(
fund_id varchar(20) primary key,
conservation_id varchar(20),
source_name varchar(100),
amount_idr decimal(20,2),
date_funded date
)


copy regulatory_permits from 'C:\Data\010Regulatory_Permits.csv' delimiter ',' csv header;

select * from regulatory_permits

copy land_tenure_records from 'C:\Data\011Land_Tenure_Records.csv' delimiter ',' csv header;

select * from land_tenure_records

truncate table land_tenure_records

copy biodiversity_monitoring from 'C:\Data\012Biodiversity_Monitoring.csv' delimiter ',' csv header;

select * from biodiversity_monitoring

select distinct(water_quality) from biodiversity_monitoring

select
    rp.permit_status as Status_Izin,
	--bm.water_quality,
	avg(case
	    when bm.water_quality = 'Poor' then 1
		when bm.water_quality = 'Moderate' then 2
		when bm.water_quality = 'Good' then 3
	else 0
	end) as Rataan_Kualitas_Air,
	-- bm.tree_density
	avg(bm.tree_density) as Rataan_Kerapatan_Pohon,
	count(*) as Jumlah_Proyek
from regulatory_permits rp
join land_tenure_records ltr on rp.conservation_id = ltr.conservation_id
join biodiversity_monitoring bm on rp.conservation_id = bm.conservation_id
group by rp.permit_status
order by Rataan_Kerapatan_Pohon DESC

select
    rp.permit_status,
	ltr.land_type,
	ltr.boundary_defined,
	bm.species_count,
	bm.tree_density,
	-- bm.water_quality
   case
	    when bm.water_quality = 'Poor' then 1
		when bm.water_quality = 'Moderate' then 2
		when bm.water_quality = 'Good' then 3
	else 0
	end as Rataan_Kualitas_Air
from regulatory_permits rp
join land_tenure_records ltr on rp.conservation_id = ltr.conservation_id
join biodiversity_monitoring bm on rp.conservation_id = bm.conservation_id