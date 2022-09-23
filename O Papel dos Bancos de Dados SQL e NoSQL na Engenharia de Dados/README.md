# Projeto: O Papel dos Bancos de Dados SQL e NoSQL na Engenharia de Dados



### Entendendo as diferenças e características entre Banco de Dados SQL e NoSQL:



### SQL e NoSQL

​	Bancos de dados relacional(SQL) é um banco de dados onde armazenamos dados com um relacionamento entre si. Usado quando se precisa de um sistema mais rígido, quando já se conhece que tipos de dados você vai relacionar.

​	NoSQL = No Only SQL(Não Apenas SQL) → surgiu como uma alternativa ao SQL e não para tentar substituir. Necessidade veio principalmente por conta de escalabilidade(ter que armazenar cada vez mais informações e dados não estruturados). NoSQL veio para suprir o que os bancos relacionais não conseguiam. Devem ser usados de forma que se complementem

### Características do SQL

- Escalabilidade Vertical ou Horizontal.
- Estrutura mais rígida, previamente moldada, modelada, definição de chaves primárias e secundárias.
- Maior consistência, organização.
- Performance: Dependente de sistema de disco para performance.
- Transações: Atomicidade, consistência, isolamento, durabilidade (ACID).

### Características do NoSQL

- Escalabilidade Horizontal.

- Particionando (sharding) entre os nós

- Ausência quase completa de regras de esquema, mas há boas práticas que devem ser seguidas para que ele se torne performático.

- Menos garantia da consistência.

- Performance: Depende do tamanho do cluster e latência da rede.

- Transações: Basically available, soft-state, eventually consistent.

- Vantagens: flexibilidade, escalabilidade, alta performance.

  

No caso do Mongo, é recomendado o uso para grande volume de dados, mas não é recomendado em casos de necessidade de Relacionamentos/JOIN, em que propriedades ACID e transações são importantes e em sistemas de pagamento, pois diversas entidades de pagamento não homologam em sistemas que dados financeiros de clientes não estão em um banco de dados relacional.



### Engenharia de Dados

​	O Engenheiro de Dados prepara a informação que será consumida, por isso precisa ter o conhecimento técnico para coletar, preparar, armazenar e deixar essa informação disponível para que o cientista de dados utilize.
​	O Engenheiro de Dados tem maior proximidade com a manipulação dos dados e possui o conhecimento técnico das ferramentas.
​	O Engenheiro vai gerar essas informações para consumo do cientista de dados ou outras opções de consumo de informações, por isso é necessário seu conhecimento nos diversos tipos de Banco de Dados.

​	O Cientista aplica todas as informações disponibilizadas pelo Engenheiro , verifica todos os insights  e gera dados em cima dessa informação para complementar as informações e ter maior aproveitamento das informações.





**Certificando o conhecimento do modulo de introdução ao MongoDB e Banco de Dados NoSQL.**



**Quais tipos de dados podem ser armazenados no Redis?**
A maioria dos tipos de dados como string , numeros JSON

**O MongoDB suporta restrições de chave estrangeira?**
Não,

**MongoDB tem suporte a SQL?**
Nao, tem linguagem propria

**Quais as linguagens de consulta utilizadas pelo Neo4j e Cassandra respectivamente?**
Cyper e CQL

**Qual comando utilizado para criar um database no MondoDB?**
User <nome_database>

**Qual tipo de escalabilidade adiciona mais recurso na máquina?**
Escalabilidade Vertical

**Qual o(s) método(s) que podemos utilizar para criar um novo documento?**
db.colletion.insertOne(). db.collection.insertMany(), db.collection.insert()

**MongoDB tem suporte a índices?**
Sim e seu funcionamento é igual ao dos bandos de dados relacionais

**Qual o(s) método(s) que podemos utilizar para consultar um documento?**
db.collection.find{});

**Quais os tipos de banco NoSql?**
Orientado a documentos, chave-valor, grafo e orientado a coluna