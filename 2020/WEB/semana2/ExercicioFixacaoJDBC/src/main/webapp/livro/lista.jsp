<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
    <fmt:bundle basename="messages">
        <head>
            <title><fmt:message key="livrariaVirtual"/></title>
        </head>
        <body>
            <%
                String contextPath = request.getContextPath().replace("/", "");
            %>
            <div align="center">
                <h1><fmt:message key="gerenciamentoDeLivros"/></h1>
                <h2>
                    <a href="/"><fmt:message key="menuPrincipal"/></a>
                    <a href="/livros/cadastro"><fmt:message key="novoLivro"/></a>
                </h2>
            </div>

            <div align="center">
                <table border="1">
                    <caption><fmt:message key="listaDeLivros"/></caption>
                    <tr>
                        <th><fmt:message key="id"/></th>
                        <th><fmt:message key="titulo"/></th>
                        <th><fmt:message key="editora"/></th>
                        <th><fmt:message key="autor"/></th>
                        <th><fmt:message key="ano"/></th>
                        <th><fmt:message key="preco"/></th>
                        <th><fmt:message key="acoes"/></th>
                    </tr>
                    <c:forEach var="livro" items="${requestScope.listaLivros}">
                        <tr>
                            <td>${livro.id}</td>
                            <td>${livro.titulo}</td>
                            <td>${livro.editora.nome}</td>
                            <td>${livro.autor}</td>
                            <td>${livro.ano}</td>
                            <td>${livro.preco}</td>
                            <td><a href="/livros/edicao?id=${livro.id}"><fmt:message key="edicao"/></a>
                                <a href="/livros/remocao?id=${livro.id}"
                                   onclick="return confirm('<fmt:message key="mensagemDeletar"/>');"
                                   >
                                    <fmt:message key="remocao"/> 
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </body>
    </fmt:bundle>
</html>