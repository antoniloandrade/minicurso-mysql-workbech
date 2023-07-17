/*Esse comando é usado para exibir a estrutura da tabela chamada "gafanhotos". Ele mostra informações sobre as colunas, como nome, tipo de dado e outras propriedades */
desc gafanhotos;

/* Esse comando renomeia a tabela "pessoas" para "gafanhotos". A tabela agora terá o nome "gafanhotos" em vez de "pessoas" */
alter table pessoas
rename to gafanhotos;

/*Esse comando adiciona uma nova coluna chamada "profissao" à tabela "pessoas". 
O tipo de dado da coluna é varchar(10), que significa que ela pode armazenar uma string de até 10 caracteres. 
A nova coluna será adicionada após a coluna "nome".*/
alter table pessoas
add column profissao varchar(10) after nome;

/*Excluir a coluna "codigo" da tabela "gafanhotos"*/
ALTER TABLE gafanhotos
DROP COLUMN codigo;

/*Esse comando modifica a definição da coluna "profissao" na tabela "pessoas". 
Ela é alterada para ter um tipo de dado varchar(20), o que significa que pode armazenar uma string de até 20 caracteres. 
A cláusula NOT NULL indica que a coluna não pode ter valores nulos. A cláusula DEFAULT '' define um valor padrão para a coluna como uma string vazia ('').*/
alter table pessoas
modify column prof varchar(20) not null default '';

/*Esse comando renomeia a coluna "profissao" para "prof" na tabela "pessoas". 
Além disso, ele modifica a definição da coluna "prof", 
alterando o tipo de dado para varchar(20), definindo a cláusula NOT NULL para não permitir valores nulos e definindo um valor padrão como uma string vazia ('').*/
alter table pessoas
change column profissao prof varchar(20) not null;

/*Esse comando remove a coluna "profissao" da tabela "pessoas". A coluna e todos os seus dados serão excluídos permanentemente da tabela.*/
alter table pessoas
drop column profissao;

/*é uma consulta SQL que recupera todas as linhas e colunas da tabela "pessoas". 
O asterisco (*) é um curinga que representa todas as colunas da tabela. Esse comando retorna todos os dados presentes na tabela "pessoas".*/
select * from pessoas;