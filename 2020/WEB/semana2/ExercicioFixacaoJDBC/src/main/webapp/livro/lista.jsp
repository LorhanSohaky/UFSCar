<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Livraria Virtual</title>
    </head>
    <body>
        <%
            String contextPath = request.getContextPath().replace("/", "");
        %>
        <div align="center">
            <h1>Gerenciamento de Livros</h1>
            <h2>
                <a href="/">Menu Principal</a>
                <a href="/livros/cadastro">Adicione Novo Livro</a>
            </h2>
        </div>

        <div align="center">
            <table border="1">
                <caption>Lista de Livros</caption>
                <tr>
                    <th>ID</th>
                    <th>Título</th>
                    <th>Editora</th>
                    <th>Autor</th>
                    <th>Ano</th>
                    <th>Preço</th>
                    <th>Ações</th>
                </tr>
                <c:forEach var="livro" items="${requestScope.listaLivros}">
                    <tr>
                        <td>${livro.id}</td>
                        <td>${livro.titulo}</td>
                        <td>${livro.editora.nome}</td>
                        <td>${livro.autor}</td>
                        <td>${livro.ano}</td>
                        <td>${livro.preco}</td>
                        <td><a href="/livros/edicao?id=${livro.id}">Edição</a>
                            <a href="/livros/remocao?id=${livro.id}"
                               onclick="return confirm('Tem certeza de que deseja excluir este item?');"
                               >
                                Remoção 
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>