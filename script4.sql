/*Este comando cria uma tabela chamada "cursos" se ela não existir. A tabela tem as seguintes colunas:*/
create table if not exists cursos(

/*Uma coluna de texto não nulo com no máximo 30 caracteres que armazena o nome do curso. O modificador NOT NULL garante que o valor não seja nulo. 
O modificador UNIQUE indica que os valores nessa coluna devem ser únicos.*/
nome varchar(30) not null unique,

/*Uma coluna de texto que armazena a descrição do curso.*/
descricao text,

/*Uma coluna inteira não negativa que armazena a carga horária do curso.*/
carga int unsigned,

/* Uma coluna inteira não negativa que armazena o total de aulas do curso.*/
totaulas int unsigned,

/*Uma coluna do tipo YEAR que armazena o ano do curso com um valor padrão definido como '2016'.*/
ano year default '2016'

/*specifica a codificação de caracteres da tabela como utf8mb4.*/
) default charset = utf8mb4;


/*Este comando adiciona uma nova coluna chamada "idcursos" na tabela "cursos" como a primeira coluna. A coluna é do tipo inteiro.*/
alter table cursos
add column idcursos int first;

/*Este comando adiciona uma restrição de chave primária à coluna "idcursos" na tabela "cursos". A chave primária é usada para identificar exclusivamente cada registro na tabela.*/
alter table cursos
add primary key (idcursos);

/*Este comando exibe informações sobre a estrutura da tabela "cursos". Ele mostra detalhes sobre as colunas da tabela, como nome, tipo de dados, modificações, entre outros.*/
describe cursos;