select * from abundancia

--verificar valores nos campos
select distinct campanha
from abundancia
 
select distinct campanha
from abundancia

select distinct modulo
from abundancia	

select distinct data_registro
from abundancia		

select distinct periodo_sazonal
from abundancia		

select distinct nome_cientifico
from abundancia		

select distinct periodo_sazonal
from abundancia		
	
	
-- verificar se alguma espécie entrou e extinção após a implantação
with dados_etapa as (
Select etapa, nome_cientifico, status_extincao
from abundancia
group by etapa, nome_cientifico, status_extincao
)
select *
from dados_etapa 
where nome_cientifico in (
		select final.nome_cientifico from
		(	select xx.nome_cientifico, count(0) from
				(select distinct nome_cientifico, status_extincao from dados_etapa ) xx
			group by xx.nome_cientifico
			having count(0) > 1) final
	)

--Verificar especíes que só existem em uma etapa
select nome_cientifico, etapa
from abundancia
where 	nome_cientifico in (
	(select 	x.nome_cientifico from
		(select nome_cientifico, etapa from abundancia group by nome_cientifico, etapa ) x
	group by x.nome_cientifico
	having count(0) = 1) 
)
group by nome_cientifico, etapa

--Verificar periodos existentes	
select distinct periodo_sazonal
from abundancia

-- Recuperar um registro que possui enchente no período
select * 
from abundancia
where periodo_sazonal = 'enchente'

	
select  *
from abundancia 
where nome_cientifico = 'HYPOCNEMIS STRIATA'
order by data_hora
