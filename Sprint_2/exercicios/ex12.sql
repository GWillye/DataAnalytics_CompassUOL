--Apresente a query para listar código, nome e data de nascimento dos dependentes do vendedor com menor valor total bruto em vendas (não sendo zero). 
--As colunas presentes no resultado devem ser cddep, nmdep, dtnasc e valor_total_vendas.
--Observação: Apenas vendas com status concluído.

SELECT 
	dep.cddep,
    dep.nmdep,
    dep.dtnasc,
    total_vendas.valor_total_vendas
FROM tbdependente as dep
JOIN (
    SELECT 
        seller.cdvdd as vendedor,
        SUM(sales.qtd * sales.vrunt) as valor_total_vendas
    FROM tbvendas as sales
    LEFT JOIN tbvendedor as seller ON seller.cdvdd = sales.cdvdd
    WHERE sales.status = 'Concluído'
    GROUP BY seller.cdvdd
    ORDER BY valor_total_vendas
    LIMIT 1
) as total_vendas ON dep.cdvdd = total_vendas.vendedor;

