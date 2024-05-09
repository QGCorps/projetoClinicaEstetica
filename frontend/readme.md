# Maju Galé - Clínica de estética

Este é o README para a aplicação web que contém um frontend desenvolvido em HTML, CSS e JavaScript, incluindo um painel administrativo construído com Bootstrap. A API está implementada em Node.js, utilizando um banco de dados MySQL.

## Funcionalidades

A aplicação possui as seguintes funcionalidades:

- **Frontend Público:**
  - Interface de usuário para os clientes acessarem informações sobre o serviço/produto oferecido.
  - Possibilidade de realizar ações como registro, login, visualização de produtos/serviços, entre outras.

- **Painel Administrativo:**
  - Área restrita para administradores.
  - Permite gerenciar produtos/serviços, usuários, configurações do sistema, entre outros recursos.

- **API em Node.js:**
  - Fornece endpoints para interação com o frontend e o painel administrativo.
  - Realiza operações de CRUD (Create, Read, Update, Delete) no banco de dados MySQL.

## Tecnologias Utilizadas

- **Frontend:**
  - HTML5
  - CSS3
  - JavaScript
  - Bootstrap

- **Backend/API:**
  - Node.js
  - Express.js

- **Banco de Dados:**
  - MySQL

## Estrutura de Diretórios

```
- /frontend
  - index.html
  - style.css
  - script.js
  - ...

- /admin_panel
  - index.html
  - style.css
  - script.js
  - ...

- /api
  - server.js
  - routes/
    - users.js
    - products.js
    - ...
  - controllers/
    - userController.js
    - productController.js
    - ...
  - models/
    - userModel.js
    - productModel.js
    - ...
  - config/
    - dbConfig.js
    - ...

- /database
  - schema.sql
  - seed.sql

- README.md
```

## Instalação e Uso

1. **Clonar o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/nome-do-repositorio.git
   ```

2. **Instalar dependências:**
   - Frontend:
   ```bash
   # Entrar na pasta frontend
   cd frontend

   # Não é necessário instalar dependências para frontend puro
   ```

   - Backend/API:
   ```bash
   # Entrar na pasta api
   cd api

   # Instalar dependências Node.js
   npm install
   ```

3. **Configuração do Banco de Dados:**
   - Criar um banco de dados MySQL.
   - Importar o arquivo `schema.sql` para criar as tabelas necessárias.
   - Opcionalmente, pode-se importar o arquivo `seed.sql` para inserir dados de exemplo.

4. **Configuração da API:**
   - No diretório `api/config`, renomeie o arquivo `dbConfig.example.js` para `dbConfig.js`.
   - Edite as informações de configuração do banco de dados (`host`, `user`, `password`, `database`) no arquivo `dbConfig.js` de acordo com suas credenciais.

5. **Executar a Aplicação:**
   - Frontend:
     - Basta abrir os arquivos HTML diretamente no navegador ou hospedar em um servidor web.

   - Backend/API:
   ```bash
   # Na pasta api
   npm start
   ```

   A API estará acessível em `http://localhost:3000`.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para enviar pull requests para melhorar este projeto. 

Se tiver alguma dúvida ou sugestão, por favor, abra uma issue.

## Licença

Este projeto está licenciado sob a [Licença MIT](https://opensource.org/licenses/MIT).