CREATE VIEW vwDisplayOperacao 
AS 
SELECT 
	DateInsert,
	Tear,
	Artigo,
	TearStatus,
	time_to_sec(Continuando)/60 as Continuando_minutos,
	cast(SUBSTRING_INDEX(replace(ParadasEficienciaTurnoAtual," ",""), "/", 1) as int) as ParadasTurnoAtual,
	cast(SUBSTRING_INDEX(replace(ParadasEficienciaTurnoAtual," ",""), "/", -1) as decimal(18,5)) as EficienciaTurnoAtual,
	cast(SUBSTRING_INDEX(replace(ParadasEficiencia24h," ",""), "/", 1) as int) as Paradas24h,
	cast(SUBSTRING_INDEX(replace(ParadasEficiencia24h," ",""), "/", -1) as decimal(18,5)) as Eficiencia24h,
	cast(RPM as int) as RPM,
	time_to_sec(PrevisaoTrocaRoloTecido)/60 as PrevisaoTrocaRoloTecido_minutos,
	time_to_sec(PrevisaoTrocaRoloUrdume)/60 as PrevisaoTrocaRoloUrdume_minutos 
from
	tbldisplayoperacao DO;

--média de rpm dos teares em operação no turno A ( das 5h20min às 13h30min)
select
	tear,
	avg(RPM) as RPM
from
	vwDisplayOperacao
where
	tearstatus in ('Operando') and
	DateInsert between concat(cast(CURDATE() as varchar(20)), " 05:20:00.000") and 
	concat(cast(CURDATE() as varchar(20)), " 13:30:00.000")
group by 	
	tear