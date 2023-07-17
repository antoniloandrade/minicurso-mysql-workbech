/* Este comando especifica o banco de dados que você deseja usar, neste caso, "cadastro". 
Ele altera o contexto para o banco de dados "cadastro", permitindo que você execute comandos nesse banco de dados.*/
use cadastro;

/*Este comando exibe a estrutura da tabela "gafanhotos", mostrando os nomes e tipos de coluna, bem como outras informações relevantes sobre a tabela.*/
describe gafanhotos;

/* Este comando adiciona uma nova coluna chamada "cursopreferido" do tipo INT à tabela "gafanhotos".*/
alter table gafanhotos 
add column cursopreferido int;

/*Este comando adiciona uma chave estrangeira à coluna "cursopreferido" da tabela "gafanhotos", que faz referência à coluna "idcurso" da tabela "cursos". 
Isso estabelece uma relação entre as duas tabelas usando a coluna "cursopreferido" como chave estrangeira.*/
alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

/*Este comando seleciona todas as colunas da tabela "gafanhotos" e retorna todos os registros presentes nessa tabela.*/
select * from gafanhotos;
/*Este comando seleciona todas as colunas da tabela "cursos" e retorna todos os registros presentes nessa tabela.*/
select * from cursos;

/*Este comando atualiza o valor da coluna "cursopreferido" para '6' na tabela "gafanhotos" para o registro onde o valor da coluna "id" é igual a '1'.*/
update gafanhotos set cursopreferido = '6' where id = '1';

/*Este comando exclui os registros da tabela "cursos" onde o valor da coluna "idcurso" é igual a '28'.*/
delete from cursos where idcurso = '28';

/*Este comando seleciona as colunas "nome" e "cursopreferido" da tabela "gafanhotos" e retorna os registros dessas colunas.*/
select nome, cursopreferido from gafanhotos;

/*Este comando seleciona as colunas "nome" e "ano" da tabela "cursos" e retorna os registros dessas colunas.*/
select nome, ano from cursos;

/*Este comando combina as tabelas "gafanhotos" e "cursos" com base na correspondência da coluna "idcurso" em "cursos" com a coluna "cursopreferido" em "gafanhotos". 
Em seguida, retorna as colunas "nome" de "gafanhotos", "nome" de "cursos" e "ano" de "cursos". Os resultados são ordenados pelo valor da coluna "nome" em "gafanhotos".*/
select gafanhotos.nome,cursos.nome, cursos.ano
from gafanhotos join cursos 
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

/*Este comando é semelhante ao comando anterior, mas utiliza aliases para as tabelas "gafanhotos" (g) e "cursos" (c). 
O resultado é o mesmo, com os resultados ordenados pelo valor da coluna "nome" em "gafanhotos".*/
select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

/* Este comando combina as tabelas "gafanhotos" e "cursos" com base na correspondência da coluna "idcurso" em "cursos" com a coluna "cursopreferido" em "gafanhotos". 
Retorna as colunas "nome" de "gafanhotos", "nome" de "cursos" e "ano" de "cursos". 
Neste caso, é um LEFT OUTER JOIN, o que significa que todos os registros da tabela "gafanhotos" serão retornados, mesmo que não haja uma correspondência na tabela "cursos".*/
select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;

/* Este comando combina as tabelas "gafanhotos" e "cursos" com base na correspondência da coluna "idcurso" em "cursos" com a coluna "cursopreferido" em "gafanhotos". 
Retorna as colunas "nome" de "gafanhotos", "nome" de "cursos" e "ano" de "cursos". 
Neste caso, é um RIGHT OUTER JOIN, o que significa que todos os registros da tabela "cursos" serão retornados, mesmo que não haja uma correspondência na tabela "gafanhotos".*/
select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido;





















