use cadastro;

/* Este comando cria a tabela "gafanhotos_assiste_curso" com as colunas "id" (chave primária), "data", "idgafanhoto" (chave estrangeira referenciando a tabela "gafanhotos") 
e "idcurso" (chave estrangeira referenciando a tabela "cursos"). O conjunto de caracteres padrão é definido como "utf8mb3".*/
create table gafanhotos_assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso)references cursos(idcurso)
) default charset = utf8mb3;

/*Este comando insere um novo registro na tabela "gafanhotos_assiste_curso" com os valores "DEFAULT" (para gerar automaticamente o valor da coluna "id"), 
'2014-03-01' para a coluna "data", '1' para a coluna "idgafanhoto" e '2' para a coluna "idcurso".*/
insert into gafanhotos_assiste_curso values
(default, '2014-03-01', '1','2');

/*Este comando seleciona todas as colunas da tabela "gafanhotos_assiste_curso" e retorna todos os registros presentes nessa tabela.*/
select * from gafanhotos_assiste_curso;

/* Este comando combina as tabelas "gafanhotos" e "gafanhotos_assiste_curso" com base na correspondência da coluna "id" em "gafanhotos" com a coluna "idgafanhoto" em "gafanhotos_assiste_curso". 
Retorna as colunas "id" e "nome" de "gafanhotos" e as colunas "idgafanhoto" e "idcurso" de "gafanhotos_assiste_curso".*/
select g.id, g.nome, a.idgafanhoto, idcurso from gafanhotos g
join gafanhotos_assiste_curso a
on g.id = a.idgafanhoto;

/* Este comando combina as tabelas "gafanhotos", "gafanhotos_assiste_curso" e "cursos" com base nas correspondências entre as colunas "id" em "gafanhotos" com "idgafanhoto" em "gafanhotos_assiste_curso" e "idcurso" em "cursos" com "idcurso" em "gafanhotos_assiste_curso". Retorna as colunas "nome" de "gafanhotos" e "cursos". 
Os resultados são ordenados pelo valor da coluna "nome" em "gafanhotos".*/
select g.nome,c.nome from gafanhotos g
join gafanhotos_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;


















