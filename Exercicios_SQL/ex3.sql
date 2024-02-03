--Apresente a query para listar as 5 editoras com mais livros na biblioteca. 
 --O resultado deve conter apenas as colunas quantidade, nome, estado e cidade. 
 --Ordenar as linhas pela coluna que representa a quantidade de livros em ordem decrescente.
 
select count(*) quantidade, edi.nome, adr.estado, adr.cidade
from livro as book
left join editora as edi
	on book.editora = edi.codeditora
left join endereco as adr
	on edi.endereco = adr.codendereco
group by edi.nome
order by quantidade desc