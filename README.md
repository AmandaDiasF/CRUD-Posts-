# Facebook CRUD – Usuários e Posts

Aplicação Java Web desenvolvida para a disciplina **Fundamentos de Java EE**, que simula um mini “Facebook” com cadastro de usuários e posts persistidos em banco de dados relacional.

---

## Tecnologias utilizadas

<p>
  <img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white"/>
  <img src="https://img.shields.io/badge/Jakarta%20Servlets-EF2D5E?style=for-the-badge&logo=java&logoColor=white"/>
  <img src="https://img.shields.io/badge/JSP-007396?style=for-the-badge&logo=java&logoColor=white"/>
  <img src="https://img.shields.io/badge/JSTL-0A7BBB?style=for-the-badge&logo=java&logoColor=white"/>
  <img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/JDBC-326CE5?style=for-the-badge&logo=databricks&logoColor=white"/>
  <img src="https://img.shields.io/badge/DAO%20Pattern-000000?style=for-the-badge&logo=codeforces&logoColor=white"/>
  <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white"/>
  <img src="https://img.shields.io/badge/Tomcat-F8DC75?style=for-the-badge&logo=apache-tomcat&logoColor=black"/>
  <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=eclipse-ide&logoColor=white"/>
</p>

---

## Funcionalidades

- Autenticação de usuário com e‑mail e senha.
- CRUD de **Usuários**: listar, cadastrar, editar e excluir usuários.
- CRUD de **Posts**: listar, criar, editar e excluir posts.
- Associação de cada post ao **usuário autenticado** no momento da criação (via sessão HTTP).
- Interface com JSP + JSTL e **Bootstrap** para estilização das telas.

---

## Estrutura do projeto

- `src/main/java/controller`  
  - `LoginController` – login e logout de usuários.
  - `UsersController` – operações de CRUD de usuários.
  - `PostsController` – operações de CRUD de posts.
- `src/main/java/model`  
  - `User`, `Post`, `ModelException`.
- `src/main/java/model/dao`  
  - `UserDAO`, `PostDAO`, `MySQLUserDAO`, `MySQLPostDAO`, `DBHandler`, `MySQLConnectionFactory`.
- `src/main/webapp`  
  - `login.jsp`, `index.jsp`, páginas JSP de listagem e formulários de usuários e posts.

---

## Como executar

1. Configurar o banco de dados relacional e as tabelas necessárias de acordo com o ambiente da disciplina.
2. Ajustar URL, usuário e senha do banco em `MySQLConnectionFactory`.
3. Importar o projeto em uma IDE (por exemplo, Eclipse) como **Dynamic Web Project**.
4. Configurar o servidor de aplicação (por exemplo, Apache Tomcat).
5. Executar o projeto e acessar a aplicação pelo navegador (ex.: `http://localhost:8080/seu-contexto`).

---

## Fluxo de uso

1. Acessar a tela de **login** e autenticar com um usuário válido.
2. Usar o menu para navegar entre:
   - **Usuários**: gerenciar cadastro (listar, cadastrar, editar, excluir).
   - **Posts**: criar posts vinculados ao usuário logado, listar, editar e excluir.
