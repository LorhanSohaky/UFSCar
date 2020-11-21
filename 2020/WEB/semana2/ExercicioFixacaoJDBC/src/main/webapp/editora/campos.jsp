<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:bundle basename="messages">
    <table border="1">
        <caption>
            <c:choose>
                <c:when test="${editora != null}">
                    <fmt:message key="edicao"/>
                </c:when>
                <c:otherwise>
                    <fmt:message key="cadastrar"/>
                </c:otherwise>
            </c:choose>
        </caption>
        <c:if test="${editora != null}">
            <input type="hidden" name="id" value="${editora.id}" />
        </c:if>
        <tr>
            <td><label for="nome"><fmt:message key="nome"/></label></td>
            <td><input type="text" id="nome" name="nome" size="45"
                       required value="${editora.nome}" /></td>
        </tr>
        <tr>
            <td><label for="cnpj"><fmt:message key="cnpj"/></label></td>
            <td><input type="text" id="cnpj" name="cnpj" required
                       value="${editora.CNPJ}" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="<fmt:message key="salvar"/>" /></td>
        </tr>
    </table>
</fmt:bundle>