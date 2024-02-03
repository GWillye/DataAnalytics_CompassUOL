--Apresente a query para listar o autor com maior número de livros publicados. 
--O resultado deve conter apenas as colunas codautor, nome, quantidade_publicacoes.

select aut.codautor, aut.nome, count(*) as quantidade_publicacoes
from autor as aut
left join livro as book
	on aut.codautor = book.autor
group by aut.codautor
order by quantidade_publicacoes desc
limit 1