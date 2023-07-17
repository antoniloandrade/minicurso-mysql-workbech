/* Este comando seleciona todas as colunas da tabela "cursos" onde o valor da coluna "nome" começa com a letra 'P'.*/
select * from cursos
where nome like 'P%'; 

/*Este comando seleciona todas as colunas da tabela "cursos" onde o valor da coluna "nome" termina com a letra 'P'.*/
select * from cursos
where nome like '%P'; 

/*Este comando seleciona todas as colunas da tabela "cursos" onde o valor da coluna "nome" contém a letra 'P' em qualquer posição.*/
select * from cursos
where nome like '%P%'; 

/*Este comando seleciona todas as colunas da tabela "cursos" onde o valor da coluna "nome" contém a letra 'A' em qualquer posição.*/
select * from cursos
where nome like '%A%'; 

/*Este comando seleciona todas as colunas da tabela "cursos" onde o valor da coluna "nome" não contém a letra 'A'.*/
select * from cursos
where nome not like '%A%'; 

/*Este comando seleciona todas as colunas da tabela "cursos" onde o valor da coluna "nome" começa com 'ph', 
seguido por qualquer número de caracteres, depois 'p' e, em seguida, qualquer número de caracteres.*/
select * from cursos
where nome like 'ph%p%'; 

/*Este comando seleciona todas as colunas da tabela "cursos" onde o valor da coluna "nome" começa com 'ph', 
seguido por qualquer número de caracteres, depois 'p' e, em seguida, exatamente um caractere.*/
select * from cursos
where nome like 'ph%p_'; 

/*Este comando seleciona todas as colunas da tabela "cursos" onde o valor da coluna "nome" começa com 'p', 
seguido por qualquer caractere, depois 'p' e, em seguida, qualquer número de caracteres.*/
select * from cursos
where nome like 'p_p%'; 

/*Este comando seleciona todas as colunas da tabela "cursos" onde o valor da coluna "nome" começa com 'p',
 seguido por dois caracteres quaisquer, depois 't' e, em seguida, qualquer número de caracteres.*/
select * from cursos
where nome like 'p__t%'; 

/*Este comando seleciona valores distintos da coluna "nacionalidade" da tabela "gafanhotos" e os retorna em ordem alfabética.*/
select distinct nacionalidade from gafanhotos
order by nacionalidade;

/*Este comando seleciona valores distintos da coluna "carga" da tabela "cursos" e os retorna em ordem crescente.*/
select distinct carga from cursos
order by carga;

/*Este comando retorna o número total de registros na tabela "cursos".*/
select count(*) from cursos;

/* Este comando retorna o número de registros na tabela "cursos" onde o valor da coluna "carga" é maior que 40.*/
select count(*) from cursos where carga > 40;

/*Este comando seleciona todas as colunas da tabela "cursos" e os registros são ordenados em ordem crescente pelo valor da coluna "carga".*/
select * from cursos order by carga;

/*Este comando retorna o valor máximo da coluna "carga" na tabela "cursos".*/
select max(carga) from cursos;

/*Este comando retorna o valor máximo da coluna "totaulas" na tabela "cursos" onde o valor da coluna "ano" é igual a '2016'.*/
select max(totaulas) from cursos where ano = '2016';

/*Este comando retorna o valor mínimo da coluna "totaulas" na tabela "cursos" onde o valor da coluna "ano" é igual a '2016'.*/
select min(totaulas) from cursos where ano = '2016';

/*Este comando retorna a soma de todos os valores da coluna "totaulas" na tabela "cursos" onde o valor da coluna "ano" é igual a '2016'.*/
select sum(totaulas) from cursos where ano = '2016';

/*Este comando retorna a média de todos os valores da coluna "totaulas" na tabela "cursos" onde o valor da coluna "ano" é igual a '2016'.*/
select avg(totaulas) from cursos where ano = '2016';

/*Este comando atualiza a coluna "nome" da tabela "cursos" com o valor 'PáOO' para o registro onde o valor da coluna "idcurso" é igual a 9.*/
update cursos set nome = 'PáOO' where idcurso = 9;

