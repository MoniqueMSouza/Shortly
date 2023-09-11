# Shortly - Encurtador de URLs

O Shortly é uma ferramenta poderosa que permite encurtar URLs longas, facilitando o compartilhamento e monitoramento de links. Com esta aplicação, você pode criar URLs curtas personalizadas para redirecionar os usuários para qualquer página da web. Além disso, você pode acompanhar estatísticas de acesso para cada URL encurtada.

## Sobre

### Principais Funcionalidades:

- **Encurtamento de URLs:** Crie URLs curtas personalizadas para redirecionar os usuários para páginas da web longas.

- **Redirecionamento Seguro:** Redirecione os usuários de forma segura para as páginas originais usando URLs encurtadas.

- **Estatísticas de Acesso:** Acompanhe o número de cliques, localizações e dispositivos dos usuários que acessam suas URLs encurtadas.

- **Gerenciamento de URLs:** Visualize, edite e exclua URLs encurtadas de forma conveniente.

- **Personalização de URLs Curtas:** Personalize suas URLs curtas para torná-las memoráveis e significativas.

- **Proteção de Links:** Mantenha suas URLs originais seguras e protegidas contra acesso não autorizado.

O Shortly é a solução ideal para simplificar o compartilhamento de URLs longas e obter insights valiosos sobre o tráfego e o uso delas.

## Tecnologias Utilizadas

Neste projeto, foram utilizadas as seguintes tecnologias, bibliotecas e ferramentas:

- [Node.js](https://nodejs.org/): Plataforma de desenvolvimento utilizada como ambiente de execução do servidor.

- [Express.js](https://expressjs.com/): Framework web utilizado para criar a API do servidor e gerenciar as rotas da aplicação.

- [PostgreSQL](https://www.postgresql.org/): Banco de dados relacional escolhido para armazenar os dados do projeto.

- [Prisma](https://www.prisma.io/): Ferramenta ORM (Object-Relational Mapping) utilizada para modelar o esquema do banco de dados de forma eficiente e simplificada.

- [bcrypt](https://www.npmjs.com/package/bcrypt): Biblioteca utilizada para criptografar senhas dos usuários, garantindo a segurança dos dados sensíveis.

- [jsonwebtoken](https://www.npmjs.com/package/jsonwebtoken): Biblioteca responsável por gerar tokens JWT (JSON Web Tokens) para autenticação de usuários na aplicação.

### Motivação das Escolhas

- **Node.js e Express.js:** Optamos por utilizar o `Node.js` com o Express.js devido à sua eficiência e à vasta comunidade de desenvolvedores, o que facilita a construção de uma API robusta.

- **PostgreSQL:** Escolhemos o `PostgreSQL` como nosso banco de dados relacional devido à sua confiabilidade, escalabilidade e recursos avançados de gerenciamento de dados.

- **Prisma:** Utilizamos o `Prisma` para modelar o esquema do banco de dados de forma declarativa e gerar automaticamente o SQL das tabelas. Isso torna o desenvolvimento mais rápido e simplificado, evitando a necessidade de escrever SQL manualmente.

- **bcrypt:** A biblioteca `bcrypt` foi escolhida para garantir a segurança das senhas dos usuários, pois ela oferece funções de hash seguras para proteger dados sensíveis.

- **jsonwebtoken:** Utilizamos o `jsonwebtoken` para gerar tokens JWT que são usados na autenticação de usuários, fornecendo uma camada adicional de segurança à nossa aplicação.

Essas tecnologias foram escolhidas com base em sua adequação aos requisitos do projeto, garantindo uma aplicação robusta e segura.

## Como Rodar o Projeto

Siga estas etapas para configurar e executar o projeto em seu ambiente local:

### Pré-requisitos

Antes de começar, certifique-se de ter o seguinte instalado em sua máquina:

- [Node.js](https://nodejs.org/): Certifique-se de ter o Node.js instalado. Você pode baixá-lo em [https://nodejs.org/](https://nodejs.org/).

- [PostgreSQL](https://www.postgresql.org/): Você precisará de um servidor PostgreSQL instalado e em execução. Você pode baixar o PostgreSQL em [https://www.postgresql.org/download/](https://www.postgresql.org/download/) ou usar um serviço de banco de dados PostgreSQL em nuvem.

### Passos para Execução

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/MoniqueMSouza/Shortly
2. **Instale as Dependências:**
    ```bash
    npm install
3. **Iniciar o Servidor:**
    ```bash
    npm start
4. **Acesse a Aplicação:**

O projeto estará disponível em http://localhost:3000.
Use uma ferramenta de API para testar as rotas da aplicação.


