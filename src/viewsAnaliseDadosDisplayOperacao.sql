--verificar dados por dateInsert
select
	* 
from  
	tbldisplayoperacao 
where 
	DateInsert between '2022-04-06 00:00:00.000' and '2022-04-10 00:00:00.000' and 
	tear in ('0001','002','003','005','007','009','011','015')
order by 
	tbldisplayoperacao.DateInsert desc 
	
--contar motivo de parada por período e por tear
select
	tear,
	TearStatus,
	count(TearStatus)
from  
	tbldisplayoperacao 
where 
	DateInsert between '2022-04-06 00:00:00.000' and '2022-04-10 00:00:00.000' and 
	tear in ('0001','002','003','005','007','009','011','015') 
group by
	tear,
	TearStatus 
order by 
	tbldisplayoperacao.DateInsert desc 

--contar motivo de parada por período	
select
	TearStatus,
	count(TearStatus)
from  
	tbldisplayoperacao 
where 
	DateInsert between '2022-04-06 00:00:00.000' and '2022-04-10 00:00:00.000' and 
	tear in ('0001','002','003','005','007','009','011','015') 
group by
	TearStatus 
order by 
	tbldisplayoperacao.DateInsert desc 

--contar + tempo por motivo de parada por período		
select
	TearStatus,
	avg(continuando),
	count(TearStatus)
from  
	tbldisplayoperacao 
where 
	DateInsert between '2022-04-06 00:00:00.000' and '2022-04-10 00:00:00.000' and 
	tear in ('0001','002','003','005','007','009','011','015') 
group by
	TearStatus 
order by 
	tbldisplayoperacao.DateInsert desc 