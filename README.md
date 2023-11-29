# banco_de_dados_rede_social

# Banco de Dados Rede Social

**Descrição do Projeto:**
O Face Truco é uma aplicação de rede social simples, construída com um banco de dados SQL. Permite que os usuários compartilhem postagens, comentem nas postagens de outros usuários e mantenham uma lista de amizades.

**Estrutura do Banco de Dados**
O projeto utiliza um banco de dados chamado `face_truco` e consiste em três tabelas principais:

**Usuarios**
Armazena informações sobre os usuários, com um ID único e um nome.

**Postagens**
Contém informações sobre as postagens dos usuários, incluindo o texto da postagem, o ID do usuário que a fez e a data da postagem.

**Comentarios**
Registra os comentários feitos pelos usuários em postagens, com um ID único, o texto do comentário, o ID do usuário que o fez, o ID da postagem à qual se refere e a data do comentário.

**Amizades**
Mantém um registro de amizades entre os usuários, utilizando a chave primária composta pelos IDs dos dois usuários e a data da amizade.

**Instruções de Uso**
1. **Configuração do Banco de Dados:**
   Antes de executar a aplicação, certifique-se de configurar corretamente o banco de dados `face_truco`. Os comandos SQL necessários podem ser encontrados no arquivo `Face_truco.sql`.

2. **Inserção de Dados de Exemplo:**
   Para testar a aplicação, foram fornecidos comandos SQL para inserir dados fictícios nas tabelas.

**Consultas Exemplos**

**Recuperação de Postagens**
Para listar todas as postagens feitas por um usuário chamado 'João', execute a consulta no arquivo  `Face_truco.sql`.

**Comentários em uma Postagem**
Para mostrar todos os comentários feitos em uma postagem com o texto 'Bom dia, mundo!', consulte o arquivo `Face_truco.sql`.

**Estatísticas de Atividades**
Apresenta a contagem total de postagens e comentários feitos por cada usuário. A consulta pode ser encontrada em `Face_truco.sql`.

**Amizades Recentes**
Lista todas as novas amizades formadas nos últimos 30 dias. Consulte o arquivo `Face_truco.sql``.

**Detalhes de um Usuário**
Fornece informações detalhadas sobre um usuário chamado 'Maria', incluindo suas postagens e amizades. Consulte o arquivo `Face_truco.sql`.

**Requisitos**
Sistema de gerenciamento de banco de dados SQL (ex: MySQL, PostgreSQL)

**Contribuições**
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests para melhorar o projeto.



