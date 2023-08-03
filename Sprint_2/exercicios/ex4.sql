--Apresente a query para listar a quantidade de livros publicada por cada autor. 
--Ordenar as linhas pela coluna nome (autor), em ordem crescente. 
--Além desta, apresentar as colunas codautor, nascimento e quantidade (total de livros de sua autoria).

select aut.nome, aut.codautor, aut.nascimento, count(book.autor) as quantidade
from autor as aut
left join livro as book
	on book.autor = aut.codautor
group by aut.nome
order by aut.nome