<table class="table table-striped text-center">
    <thead>
        <tr>
            <th scope="col">Celsius</th>
            <th scope="col">Fahrenheit</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach var="i" items="${pageScope.list}">
        <tr scope="row">
            <td>
        <c:out value = "${i.getKey()}"/>
        </td>
        <td>
        <c:out value = "${i.getValue()}"/>
        </td>
        </tr>
    </c:forEach>
</tbody>
</table>