--Apresente a query para listar o código e o nome do vendedor com maior número de vendas (contagem), e que estas vendas estejam com o status concluída.  
--As colunas presentes no resultado devem ser, portanto, cdvdd e nmvdd.
  
select seller.cdvdd, seller.nmvdd
from tbvendas as sales 
left join tbvendedor as seller on sales.cdvdd = seller.cdvdd 
group by seller.cdvdd 
order by count(*) desc 
limit 1