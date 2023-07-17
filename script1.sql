/*Este comando cria um novo banco de dados chamado "cadastro". 
Ele especifica a codificação de caracteres padrão como utf8 e o método de classificação padrão como utf8_general_ci.*/
create database cadastro
default character set utf8
default collate utf8_general_ci;

/*Este comando cria uma nova tabela chamada "pessoas" no banco de dados. A tabela terá as seguintes colunas*/
create table pessoas (
`id` int not null auto_increment, /*Um identificador numérico único para cada registro.*/

`nome` varchar(30) not null,  /*Uma coluna de texto não nulo com no máximo 30 caracteres para armazenar o nome das pessoas.*/

`nascimento` date, /*Uma coluna de data para armazenar a data de nascimento das pessoas.*/

`sexo` enum('M', 'F'), /*Uma coluna de enumeração (enumerated data type) que permite apenas os valores 'M' ou 'F' para representar o sexo.*/

`peso` decimal(5,2), /*Uma coluna numérica decimal com precisão de 5 dígitos no total e 2 dígitos após a vírgula para armazenar o peso das pessoas.*/

`altura` decimal(3,2),/*Uma coluna numérica decimal com precisão de 3 dígitos no total e 2 dígitos após a vírgula para armazenar a altura das pessoas.*/

`nacionaidade` varchar(20) default 'Brasil', /*Uma coluna de texto com no máximo 20 caracteres, 
que armazena a nacionalidade das pessoas com um valor padrão definido como 'Brasil'.*/

primary key (id) /* define a coluna id como chave primária da tabela.*/

) default charset = utf8mb3; /*especifica a codificação de caracteres da tabela como utf8mb3. 
No entanto, observe que utf8mb3 está obsoleto e será removido em versões futuras do MySQL. 
Recomenda-se usar utf8mb4 em vez disso para suportar um conjunto mais amplo de caracteres.*/


