/* Este comando é usado para excluir a tabela chamada "pessoas" do banco de dados. Ele remove completamente a tabela e todos os seus dados.*/
DROP TABLE pessoas;


CREATE TABLE pessoas (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NOT NULL,
  `nascimento` DATE,
  `sexo` ENUM('M', 'F'),
  `peso` DECIMAL(5,2),
  `altura` DECIMAL(3,2),
  `nacionalidade` VARCHAR(20) DEFAULT 'Brasil',
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8mb3;

/*Este comando insere novas linhas na tabela "pessoas". 
Cada linha representa um registro com seus respectivos valores nas colunas. 
s valores são fornecidos entre parênteses e separados por vírgula. O valor "default" é usado para indicar que o valor padrão da coluna deve ser inserido.*/
INSERT INTO pessoas VALUES
(default, 'Claudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(default, 'Pedro', '1999-12-3', 'M', '87', '2', default),
(default, 'Janaína', '1987-11-12', 'F', '74.4', '1.66', 'EUA');

/*Este comando é uma consulta SQL que recupera todas as linhas e colunas da tabela "pessoas". O asterisco (*) é um curinga que representa todas as colunas da tabela. 
Ao executar esse comando, você verá todos os registros da tabela "pessoas" e todas as colunas associadas a esses registros.*/
select * from pessoas;










