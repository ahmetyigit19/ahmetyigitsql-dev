create database banka /* veri taban� olu�turma komutu*/


 use banka
 create table �ube (�d char (10),banka char (30)) /* tablo olu�turma komutu */
 select * from �ube
 use banka
 insert into �ube (�d,banka) values (1,'ak bank') /* tabloya veri ekleme kodu*/
 insert into �ube values (2, 'i� bankas�')
 insert into �ube values (3, 'finans bank')
 insert into �ube values (4,' garanti ')
 insert into �ube values (5,'tep' )

 use banka
 create table musteri (adi char (15),soyadi char (15),bankas� char (30)) /*tablo olu�urma kodu*/
 select  *from musteri
 use banka
 insert into musteri values ('ahmet','uysal','finans bank')
 insert into musteri values ('mustafa','ko�','finans bank')
insert into musteri values ('efe','�zt�rk','garanti')
insert into musteri values ('burak','al','ak bank')
insert into musteri values ('hikmet','karaman','tep')
insert into musteri values ('emre','y�ld�r�m','ak bank')
insert into musteri values ('hakan','ayd�n','garanti')

use banka /*banka veri taban�nda olu�turmak i�in yazd�m*/
create table bor� (adi char (15),soyadi char (15),bor�miktar� money )
select *from bor�
insert into bor� values ('ahmet','uysal',135)
insert into bor� values ('mustafa','ko�',2255)
insert into bor� values ('efe','�zt�rk',16025)
insert into bor� values ('burak','al',36)
insert into bor� values ('emre','y�ld�r�m',558)
insert into bor� values ('hakan','ayd�n',1457)

use banka
create table b�lg�ler (adi char (15),soyadi char (15),i�i char (30),ikametetti�iyer  char (30) )
insert into b�lg�ler values ('ahmet','uysal','��renci','kartal-�stanbul')

insert into b�lg�ler values ('mustafa','ko�','mimar','�e�me-�zmir')

insert into b�lg�ler  values ('efe','�zt�rk','polis','mecit�z�-�orum')

insert into b�lg�ler values ('burak','al','muhasebeci','�e�me-�zmir')

insert into b�lg�ler values ('hikmet','karaman','zab�ta','sultanbeyli-�stanbul')

select*from b�lg�ler

use banka
select *from b�lg�ler b1 inner join bor� b2 on b1.adi= b2.adi /* iki tabloda ortak olan adlar� bulmak i�in yaz�ld�*/

select *from b�lg�ler left join bor� on b�lg�ler.adi=bor�.adi /*soldaki tablonun hepsini di�er tabloda sadece ortak olanlar� bulmak i�in yaz�ld�*/

select *from b�lg�ler right join bor� on b�lg�ler.adi=bor�.adi /* sa�daki tablonun hepsini di�er tabloda sadece ortak olanlar� bulmak i�in yaz�ld�*/