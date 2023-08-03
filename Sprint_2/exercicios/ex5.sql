--Apresente a query para listar o nome dos autores que publicaram livros através de editoras NÃO situadas na região sul do Brasil. 
--Ordene o resultado pela coluna nome, em ordem crescente. Não podem haver nomes repetidos em seu retorno.
select distinct aut.nome from autor as aut
left join livro as book
	on aut.codautor = book.autor
left join editora as pub
  	on pub.codeditora = book.editora
left join endereco as adr
  	on pub.endereco = adr.codendereco
where adr.estado not in ('SANTA CATARINA', 'PARANÁ', 'RIO GRANDE DO SUL')
order by aut.nome