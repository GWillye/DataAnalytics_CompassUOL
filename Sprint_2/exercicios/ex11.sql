--Apresente a query para listar o código e nome cliente com maior gasto na loja. 
--As colunas presentes no resultado devem ser cdcli, nmcli e gasto, esta última representando o somatório das vendas (concluídas) atribuídas ao cliente.

SELECT 
    sales.cdcli, 
    sales.nmcli,
    SUM(sales.qtd * sales.vrunt) as gasto
FROM tbvendas as sales
where status = 'Concluído'
GROUP BY sales.cdcli, sales.nmcli
order by gasto desc
limit 1
