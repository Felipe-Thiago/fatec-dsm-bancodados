use exerciciosBD;

select * from CATEGORIA;
select * from CLIENTES;
select * from FILME;
select * from LOCACOES;

/* Exercício 3 */
/* 1. */
select * from clientes;

/* 2. */
select * from filme;

/* 3. */
select * from categoria;

/* 4. */
select * from clientes where CIDADE = 'Sorocaba';

/* 5. */
select nome, telefone from clientes
order by nome;

/* 6. */
select COUNT(*) as 'Qtd de clientes mulheres'
from clientes where sexo = 'F';

/* 7. */
select * from categoria
order by nome_categoria;

/* 8. */
select * from filme where DIRETOR = 'Shawn Levy' AND RESERVADA = 'n';

/* 9. */
select * from filme where VALOR_LOCACAO >= 5 and RESERVADA = 's';

/* 10. */
select distinct diretor from filme;

/* 11. */
select COUNT(*) as 'Filmes reservados ao todo'
from filme where RESERVADA = 's';

/* 12. */
select MAX(VALOR_LOCACAO) as 'Maior valor de locação' from filme;

/* 13. */
select * from filme where cod_categoria = 1;
select * from categoria;

/* 13.2 (sem pesquisar pelo código e mostrando o nome) */
select filme, nome_categoria
from filme
inner join categoria
on filme.cod_categoria = categoria.cod_categoria
where nome_categoria = 'Ação';

/* 14. */
select filme, c.nome_categoria, valor_locacao
from filme f
inner join categoria c
on c.cod_categoria = f.cod_categoria
where (c.cod_categoria = 2 or c.cod_categoria = 3) 
and reservada = 's' 
and valor_locacao < 5;

/* 15. */
select filme from filme f
inner join locacoes l
on f.cod_filme = l.cod_filme
where cod_cliente = 7;

/* 15.2 (sem pesquisar pelo código e mostrando somente filme e cliente)*/
select filme, nome as 'Quem alugou', data_retirada, data_devolucao
from filme f
inner join locacoes l
on f.cod_filme = l.cod_filme
inner join clientes c
on l.cod_cliente = c.cod_cliente
where nome = 'Renata Cristina';


/* 16 */
select distinct l.cod_cliente, nome
from locacoes l
inner join clientes c
on l.cod_cliente = c.cod_cliente
group by l.cod_cliente, nome
having COUNT(*) >= 3;

/* 17.*/
select c.nome, SUM(valor_locacao) as 'Total gasto'
from filme f

inner join locacoes l
on l.cod_filme = f.cod_filme
inner join clientes c
on l.cod_cliente = c.cod_cliente

where (f.cod_filme = l.cod_filme)
and (c.nome = 'Renata Cristina')
group by nome;

/* 18. */
select round(AVG(valor_locacao), 2) as 'Média de locação'
from filme;

/* 19. tentar inserir o nome do filme*/
select MIN(valor_locacao) as 'Menor valor de locação'
from filme;


select * from LOCACOES;
select * from clientes;
select * from filme;

