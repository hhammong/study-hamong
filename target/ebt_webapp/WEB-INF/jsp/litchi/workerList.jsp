<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value='/'/>css/base.css">
    <link rel="stylesheet" href="<c:url value='/'/>css/layout.css">
    <link rel="stylesheet" href="<c:url value='/'/>css/component.css">
    <link rel="stylesheet" href="<c:url value='/'/>css/page.css">
    <script src="<c:url value='/'/>js/jquery-1.11.2.min.js"></script>
    <script src="<c:url value='/'/>js/ui.js"></script>
</head>
<body>
<h1>LITCHI_WORKERLIST</h1>
<div class="board_list"><!--대충 디자인인듯-->
    <form action="<%=request.getContextPath()%>/litchi/workerList.do" method="get">
        <select name="sk"><!--search keyword-->
            <option value="lwNo" <c:if test="${param.sk=='lwNo'}">selected</c:if>>순번</option>
            <option value="lwNm" <c:if test="${param.sk=='lwNm'}">selected</c:if>>이름</option>
            <option value="lwPosition" <c:if test="${param.sk=='lwPosition'}">selected</c:if>>직급</option>
            <option value="lwAge" <c:if test="${param.sk=='lwAge'}">selected</c:if>>나이</option>
            <option value="lwJoindate" <c:if test="${param.sk=='lwJoindate'}">selected</c:if>>입사일</option>
        </select>
        <input type="text" name="searchKeyword" value="${param.searchKeyword}"><!--searchKeyword-->
        <input type="submit" value="조회하기">
        <button><a href="/litchi/workerWrite.do">등록하기</a></button>
    </form>
    <table>
        <colgroup>
            <col style="width: 80px;">
            <col style="width: 80px;">
            <col style="width: 80px;">
            <col style="width: 80px;">
            <col style="width: 80px;">
        </colgroup>
        <thead>
        <tr>
            <th>순번</th>
            <th>이름</th>
            <th>직급</th>
            <th>나이</th>
            <th>입사일</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="item">
            <tr>
                <td>${item.lwNo}</td>
                <td><a href="${path}/litchi/worker.do?lwNo=${item.lwNo}">${item.lwNm}</a></td>
                <td>${item.lwPosition}</td>
                <td>${item.lwAge}</td>
                <td>${item.lwJoindate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
