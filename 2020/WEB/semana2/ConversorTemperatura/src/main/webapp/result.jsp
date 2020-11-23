<%@page import="java.util.AbstractMap.SimpleEntry"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="minValue" scope="page" value="${not empty param.minValue ? param.minValue : -100}"/>
<c:set var="maxValue" scope="page" value="${not empty param.maxValue ? param.maxValue: 100}"/>
<c:set var="incrementValue" scope="page" value="${not empty param.incrementValue ? param.incrementValue : 5}"/>

<%!
    public List<Entry<Double, Double>> calculateTemperature(int minValue, int maxValue, int incrementValue) {
        List list = new ArrayList<Entry<Double, Double>>();

        for (int i = minValue; i <= maxValue; i += incrementValue) {
            Entry entry = new SimpleEntry<Double, Double>(i * 1.0, i * 1.8 + 32);
            list.add(entry);
        }

        return list;
    }
%>

<%
    int minValue = Integer.parseInt(pageContext.getAttribute("minValue").toString());
    int maxValue = Integer.parseInt(pageContext.getAttribute("maxValue").toString());
    int incrementValue = Integer.parseInt(pageContext.getAttribute("incrementValue").toString());

    List list = calculateTemperature(minValue, maxValue, incrementValue);

    pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<fmt:bundle basename="messages">
    <html>
        <head>
            <title><fmt:message key="conversorDeTemperatura"/></title>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
                  integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        </head>
        <body>
            <div class="container d-flex flex-column align-items-center justify-content-center"  style="max-width: 768px;">
                <div class="text-center">
                    <h1><fmt:message key="conversorDeTemperatura"/></h1>
                </div>
                <div class="flex-grow-1 w-100">
                    <%@include file="form.jsp" %>
                </div>

                <div class="mt-4 flex-grow-1 w-100">
                    <%@include file="table.jsp" %>
                </div>
            </div>

            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
            crossorigin="anonymous"></script>
        </body>
    </html>
</fmt:bundle>
