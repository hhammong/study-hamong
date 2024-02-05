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
    <form action="<%=request.getContextPath()%>/litchi/workerUpdateAction.do" method="post">

    <table>
        <colgroup>
            <col style="width: 80px;">
            <col style="width: 80px;">
            <col style="width: 80px;">
            <col style="width: 80px;">
            <col style="width: 80px;">
        </colgroup>

        <tr>
            <td>순번</td>
            <td><input type="number" name="lwNo" value="${detail.lwNo}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="lwNm" value="${detail.lwNm}"></td>
        </tr>
        <tr>
            <td>직급</td>
            <td><input type="text" name="lwPosition" value="${detail.lwPosition}"></td>
        </tr>
        <tr>
            <td>나이</td>
            <td><input type="number" name="lwAge" value="${detail.lwAge}"></td>
        </tr>
        <tr>
            <td>입사일</td>
            <td><input type="date" name="lwJoindate" value="${detail.lwJoindate}"></td>
        </tr>

    </table>

        <div><input type="submit" value="수정하기"></div>
        <%--<button><a href="${path}/litchi/worker.do?lwNo=${detail.lwNo}">취소하기</a></button>--%>
    </form>
</div>
</body>
</html>
