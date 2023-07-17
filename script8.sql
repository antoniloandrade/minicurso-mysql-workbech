/*Este comando retorna os valores distintos da coluna "totaulas" da tabela "cursos" juntamente com a contagem de ocorrências de cada valor. 
Os resultados são agrupados pela coluna "totaulas" e ordenados em ordem crescente.*/
select distinct totaulas, count(*) from cursos
group by totaulas
order by totaulas;

/*Este comando retorna todas as colunas da tabela "cursos" onde o valor da coluna "totaulas" é igual a 12.*/
select * from cursos where totaulas = 12;

/* Este comando retorna a coluna "carga" da tabela "cursos" para os registros em que o valor da coluna "totaulas" é igual a 30. Os resultados são agrupados pela coluna "carga".*/
select carga from cursos where totaulas = 30
group by carga;

/*Este comando retorna a coluna "carga" da tabela "cursos" juntamente com a contagem de nomes para os registros em que o valor da coluna "totaulas" é igual a 30. 
Os resultados são agrupados pela coluna "carga".*/
select carga, count(nome) from cursos where totaulas = 30
group by carga;

/*Este comando retorna a coluna "ano" da tabela "cursos" juntamente com a contagem de registros para cada ano. 
Os resultados são agrupados pela coluna "ano" e ordenados em ordem decrescente pela contagem.*/
select ano, count(*) from cursos
group by ano
order by count(*) desc;

/*Este comando retorna a coluna "ano" da tabela "cursos" juntamente com a contagem de registros para cada ano, desde que a contagem seja igual ou superior a 5. 
Os resultados são agrupados pela coluna "ano" e ordenados em ordem decrescente pela contagem.*/
select ano, count(*) from cursos
group by ano
having count(ano) >=5
order by count(*) desc;

/*Este comando retorna a coluna "ano" da tabela "cursos" juntamente com a contagem de registros para cada ano, desde que o ano seja maior que 2016. 
s resultados são agrupados pela coluna "ano" e ordenados em ordem decrescente pela contagem.*/
select ano, count(*) from cursos
group by ano
having ano > 2016
order by count(*) desc;

/* Este comando retorna a coluna "ano" da tabela "cursos" juntamente com a contagem de registros para cada ano, desde que o valor da coluna "totaulas" seja maior que 30 e o ano seja maior que 2013. 
Os resultados são agrupados pela coluna "ano" e ordenados em ordem decrescente pela contagem.*/
select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

/*Este comando retorna a média dos valores da coluna "carga" na tabela "cursos".*/
select avg(carga) from cursos;

/*Este comando retorna a coluna "carga" da tabela "cursos" juntamente com a contagem de registros para os registros onde o valor da coluna "ano" é maior que 2015. 
Os resultados são agrupados pela coluna "carga" e filtrados para incluir apenas as cargas que são maiores que a média das cargas em toda a tabela.*/
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);

















