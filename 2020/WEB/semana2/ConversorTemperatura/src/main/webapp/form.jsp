<form id="form" method="GET" action="result.jsp" class="flex-grow-1">
    <div class="form-group">
        <label for="minValue"><fmt:message key="valorMinimo"/></label>
        <input type="number" class="form-control" name="minValue" id="minValue" step="1" value="${pageScope.minValue}">
    </div>
    <div class="form-group">
        <label for="maxValue"><fmt:message key="valorMaximo"/></label>
        <input type="number" class="form-control" name="maxValue" id="maxValue" step="1" value="${pageScope.maxValue}">
    </div>
    <div class="form-group">
        <label for="incrementValue"><fmt:message key="valorIncremento"/></label>
        <input type="number" class="form-control" name="incrementValue" id="incrementValue" step="1" min="1" value="${pageScope.incrementValue}">
    </div>
    <div class="d-flex justify-content-between">
        <button type="reset" class="btn btn-secondary"><fmt:message key="resetar"/></button>
        <button type="submit" class="btn btn-primary"><fmt:message key="converter"/></button>
    </div>
</form>