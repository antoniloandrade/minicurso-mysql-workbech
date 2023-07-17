/*É usado para inserir novas linhas de dados na tabela "cursos". 
Para usar esse comando corretamente, você precisa fornecer os valores correspondentes às colunas da tabela.*/
insert into cursos values
('1', 'HTML4', 'Cursos de HTML5', '40', '37', '2014'),
('2','Algoritimos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MYSQL', 'Banco de Dados MYSQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateiro', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kebe', '40', '30', '2018'),
('10', 'YouTube', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

/*: Este comando atualiza a coluna "nome" da tabela "cursos" para o valor 'HTML5' onde a coluna "idcursos" é igual a '1'. 
Isso significa que o nome do curso será alterado para 'HTML5' para o curso com ID '1'.*/
update cursos
set nome = 'HTML5'
where idcursos = '1';

/*Este comando atualiza as colunas "nome" e "ano" da tabela "cursos" para os valores 'PHP' e '2015', respectivamente, onde a coluna "idcursos" é igual a '4'. 
Isso significa que o nome do curso será alterado para 'PHP' e o ano do curso será alterado para '2015' para o curso com ID '4'.*/
update cursos
set nome = 'PHP', ano = '2015'
where idcursos = '4';

/*Este comando atualiza as colunas "nome", "carga" e "ano" da tabela "cursos" para os valores 'Java', '40' e '2015', respectivamente, onde a coluna "idcursos" é igual a '5'. 
A cláusula LIMIT 1 limita a atualização a apenas uma linha, no caso de existirem várias linhas correspondentes à condição.*/
update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcursos = '5'
limit 1;

/*Este comando atualiza as colunas "ano" e "carga" da tabela "cursos" para os valores '2018' e '0', respectivamente, onde a coluna "ano" é igual a '2050'. 
A cláusula LIMIT 1 limita a atualização a apenas uma linha, no caso de existirem várias linhas correspondentes à condição.*/
update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

/* Este comando exclui linhas da tabela "cursos" onde a coluna "idcursos" é igual a '8'. Isso significa que o registro correspondente ao ID '8' será removido da tabela.*/
delete from cursos
where idcursos = '8';

/*Este comando exclui até duas linhas da tabela "cursos" onde a coluna "ano" é igual a '2050'. 
A cláusula LIMIT 2 limita a exclusão a no máximo duas linhas correspondentes à condição.*/
delete from cursos
where ano = '2050'
limit 2;


/*Este comando é uma consulta SQL que recupera todas as linhas e colunas da tabela "cursos". O asterisco (*) é um curinga que representa todas as colunas da tabela. 
Ao executar esse comando, você verá todos os registros da tabela "cursos" e todas as colunas associadas a esses registros.*/
select * from cursos;

drop database cadastro;