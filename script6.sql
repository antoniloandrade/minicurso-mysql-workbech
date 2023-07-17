/*Este comando seleciona todas as colunas da tabela "cursos" e as ordena em ordem decrescente com base na coluna "nome".*/
select * from cursos
order by nome desc;

/*Este comando seleciona todas as colunas da tabela "cursos" e as ordena em ordem crescente com base na coluna "nome".*/
select * from cursos
order by nome asc;

/*Este comando seleciona as colunas "nome", "carga" e "ano" da tabela "cursos" e as ordena em ordem crescente com base na coluna "nome".*/
select nome, carga, ano from cursos
order by nome;

/* Este comando seleciona as colunas "ano", "nome" e "carga" da tabela "cursos" e as ordena em ordem crescente com base na coluna "ano".*/
select ano, nome, carga from cursos
order by ano;

/*Este comando seleciona as colunas "ano", 
"nome" e "carga" da tabela "cursos" e as ordena primeiro em ordem crescente com base na coluna "ano" e, 
em seguida, em ordem crescente com base na coluna "nome".*/
select ano, nome, carga from cursos
order by ano, nome;

/*Este comando seleciona todas as colunas da tabela "cursos" onde a coluna "ano" é igual a '2016' e as ordena em ordem crescente com base na coluna "nome".*/
select * from cursos
where ano = '2016'
order by nome;

/*Este comando seleciona as colunas "nome" e "carga" da tabela "cursos" onde a coluna "ano" é igual a '2016' e as ordena em ordem crescente com base na coluna "nome".*/
select nome, carga from cursos
where ano = '2016'
order by nome;

/*Este comando seleciona as colunas "nome", "descricao" e "ano" da tabela "cursos" onde a coluna "ano" é maior ou igual a '2015' 
e as ordena em ordem crescente com base na coluna "ano".*/
select nome, descricao, ano from cursos
where ano >= '2015'
order by ano;

/* Este comando seleciona as colunas "nome", 
"descricao" e "ano" da tabela "cursos" onde a coluna "ano" é menor ou igual a '2015' 
e as ordena primeiro em ordem crescente com base na coluna "ano" e, em seguida, em ordem crescente com base na coluna "nome".*/
select nome, descricao, ano from cursos
where ano <= '2015'
order by ano, nome;

/*Este comando seleciona as colunas "nome", 
"descricao" e "ano" da tabela "cursos" onde a coluna "ano" não é igual a '2015'
 e as ordena primeiro em ordem crescente com base na coluna "ano" e, em seguida, em ordem crescente com base na coluna "nome".*/
select nome, descricao, ano from cursos
where ano != '2015'
order by ano, nome;

/*Este comando seleciona as colunas "nome" e "ano" da tabela "cursos" onde a coluna "ano" está entre os valores 2014 e 2016, inclusive.*/
select nome, ano from cursos
where ano between 2014 and 2016;

/*Este comando seleciona as colunas "nome" e "ano" da tabela "cursos" onde a coluna "ano" está entre os valores 2014 e 2016,
 e as ordena primeiro em ordem decrescente com base na coluna "ano" e, em seguida, em ordem crescente com base na coluna "nome".*/
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

/*Este comando seleciona as colunas "nome",
 "descricao" e "ano" da tabela "cursos" onde a coluna "ano" é igual a 2014, 2016 ou 2020,
 e as ordena primeiro em ordem crescente com base na coluna "ano" e, em seguida, em ordem crescente com base na coluna "nome".*/
select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano, nome;

/*Este comando seleciona as colunas "nome", "carga" e "totaulas" da tabela "cursos" onde a coluna "carga" é maior que 35 ou a coluna "totaulas" é menor que 30.*/
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;


















