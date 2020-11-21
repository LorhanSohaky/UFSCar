<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:bundle basename="messages">
    <table border="1">
        <caption>
            <c:choose>
                <c:when test="${livro != null}">
                    <fmt:message key="edicao"/>
                </c:when>
                <c:otherwise>
                    <fmt:message key="cadastrar"/>
                </c:otherwise>
            </c:choose>
        </caption>
        <c:if test="${livro != null}">
            <input type="hidden" name="id" value="${livro.id}" />
        </c:if>
        <tr>
            <td><label for="titulo"><fmt:message key="titulo"/></label></td>
            <td><input type="text" id="titulo" name="titulo" size="45"
                       required value="${livro.titulo}" /></td>
        </tr>
        <tr>
            <td><label for="autor"><fmt:message key="autor"/></label></td>
            <td><input type="text" id="autor" name="autor" size="45" required
                       value="${livro.autor}" /></td>
        </tr>
        <tr>
            <td><label for="editora"><fmt:message key="editora"/></label></td>
            <td><select id="editora" name="editora">
                    <c:forEach items="${editoras}" var="editora">
                        <option value="${editora.key}"
                                ${livro.editora.nome==editora.value ? 'selected' : '' }>
                            ${editora.value}</option>
                        </c:forEach>
                </select></td>
        </tr>
        <tr>
            <td><label for="ano"><fmt:message key="ano"/></label></td>
            <td><input type="number" id="ano" name="ano" size="5" required
                       min="1500" value="${livro.ano}" /></td>
        </tr>
        <tr>
            <td><label for="preco"><fmt:message key="preco"/></label></td>
            <td><input type="number" id="preco" name="preco" required
                       min="0.01" step="any" size="5" value="${livro.preco}" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="<fmt:message key="salvar"/>" /></td>
        </tr>
    </table>
</fmt:bundle>