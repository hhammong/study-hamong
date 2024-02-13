<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>데이터 조회</h1>

    <table>
        <thead>
            <tr>
                <th>COL1</th>
                <th>COL2</th>
            </tr>

        </thead>
        <tbody>
            <c:forEach items="${list}" var="item">
                <tr>
                    <td>${item.col1}</td>
                    <td>${item.col2}</td>
                </tr>
            </c:forEach>
        </tbody>
</table>
</body>
</html>
