--Apresente a query para listar código, nome e data de nascimento dos dependentes do vendedor com menor valor total bruto em vendas (não sendo zero). 
--As colunas presentes no resultado devem ser cddep, nmdep, dtnasc e valor_total_vendas.
--Observação: Apenas vendas com status concluído.

with temp_table AS (
SELECT sales.cdvdd, SUM(sales.qtd * sales.vrunt) as valor_total_vendas
FROM tbvendas as sales
LEFT JOIN tbvendedor as seller
	ON sales.cdvdd = seller.cdvdd
WHERE sales.status = 'Concluído'
GROUP BY seller.cdvdd
ORDER BY SUM(sales.qtd * sales.vrunt)
LIMIT 1
)
SELECT dep.cddep, dep.nmdep, dep.dtnasc, temp_t.valor_total_vendas
FROM tbdependente as dep
LEFT JOIN temp_table as temp_t ON dep.cdvdd = temp_t.cdvdd
where dep.cdvdd = temp_t.cdvdd
