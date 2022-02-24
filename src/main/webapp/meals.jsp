<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--@ taglib prefix="fn" uri="http://topjava.javawebinar.ru/functions" --%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>--%>
<html lang="ru">
<head>
    <title>Meals</title>
    <style>
        .normal {
            color: green;
        }

        .excess {
            color: red;
        }
    </style>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>

<table border="1" cellpadding="8" cellspacing="0">
    <thead>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    </thead>
    <c:forEach items="${meals}" var="meal">
                    <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.Meal"/>
                    <tr>
                        <td>${meal.description}</td>
                        <td>${meal.description}</td>
                        <td>${meal.calories}</td>
                    </tr>
                </c:forEach>
</table>
</body>
</html>