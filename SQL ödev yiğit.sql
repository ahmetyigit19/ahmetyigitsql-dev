create database banka /* veri tabaný oluþturma komutu*/


 use banka
 create table þube (ýd char (10),banka char (30)) /* tablo oluþturma komutu */
 select * from þube
 use banka
 insert into þube (ýd,banka) values (1,'ak bank') /* tabloya veri ekleme kodu*/
 insert into þube values (2, 'iþ bankasý')
 insert into þube values (3, 'finans bank')
 insert into þube values (4,' garanti ')
 insert into þube values (5,'tep' )

 use banka
 create table musteri (adi char (15),soyadi char (15),bankasý char (30)) /*tablo oluþurma kodu*/
 select  *from musteri
 use banka
 insert into musteri values ('ahmet','uysal','finans bank')
 insert into musteri values ('mustafa','koç','finans bank')
insert into musteri values ('efe','öztürk','garanti')
insert into musteri values ('burak','al','ak bank')
insert into musteri values ('hikmet','karaman','tep')
insert into musteri values ('emre','yýldýrým','ak bank')
insert into musteri values ('hakan','aydýn','garanti')

use banka /*banka veri tabanýnda oluþturmak için yazdým*/
create table borç (adi char (15),soyadi char (15),borçmiktarý money )
select *from borç
insert into borç values ('ahmet','uysal',135)
insert into borç values ('mustafa','koç',2255)
insert into borç values ('efe','öztürk',16025)
insert into borç values ('burak','al',36)
insert into borç values ('emre','yýldýrým',558)
insert into borç values ('hakan','aydýn',1457)

use banka
create table býlgýler (adi char (15),soyadi char (15),iþi char (30),ikametettiðiyer  char (30) )
insert into býlgýler values ('ahmet','uysal','öðrenci','kartal-Ýstanbul')

insert into býlgýler values ('mustafa','koç','mimar','çeþme-Ýzmir')

insert into býlgýler  values ('efe','öztürk','polis','mecitözü-Çorum')

insert into býlgýler values ('burak','al','muhasebeci','çeþme-Ýzmir')

insert into býlgýler values ('hikmet','karaman','zabýta','sultanbeyli-Ýstanbul')

select*from býlgýler

use banka
select *from býlgýler b1 inner join borç b2 on b1.adi= b2.adi /* iki tabloda ortak olan adlarý bulmak için yazýldý*/

select *from býlgýler left join borç on býlgýler.adi=borç.adi /*soldaki tablonun hepsini diðer tabloda sadece ortak olanlarý bulmak için yazýldý*/

select *from býlgýler right join borç on býlgýler.adi=borç.adi /* saðdaki tablonun hepsini diðer tabloda sadece ortak olanlarý bulmak için yazýldý*/