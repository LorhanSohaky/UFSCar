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
                <h1><fmt:message key="gerenciamentoDeEditoras"/></h1>
                <h2>
                    <a href="/"><fmt:message key="menuPrincipal"/></a>
                    <a href="/editoras/cadastro"><fmt:message key="novaEditora"/></a>
                </h2>
            </div>

            <div align="center">
                <table border="1">
                    <caption><fmt:message key="listaDeEditoras"/></caption>
                    <tr>
                        <th><fmt:message key="id"/></th>
                        <th><fmt:message key="nome"/></th>
                        <th><fmt:message key="cnpj"/></th>
                        <th><fmt:message key="acoes"/></th>
                    </tr>
                    <c:forEach var="editora" items="${requestScope.listaDeEditoras}">
                        <tr>
                            <td>${editora.id}</td>
                            <td>${editora.nome}</td>
                            <td>${editora.CNPJ}</td>
                            <td><a href="/editoras/edicao?id=${editora.id}"><fmt:message key="edicao"/></a>
                                <a href="/editoras/remocao?id=${editora.id}"
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