<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <fmt:bundle basename="messages">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="livrariaVirtual"/></title>
    </head>
    <body>
        <a href="livros"><fmt:message key="crudLivros"/></a><br/>
        <a href="editoras"><fmt:message key="crudEditoras"/></a>
    </body>
    </fmt:bundle>
</html>