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
    <form action="<%=request.getContextPath()%>${path}/litchi/workerUpdate.do" method="post">
        <input type="hidden" name="lwNo" value="${detail.lwNo}">
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
                <td>${detail.lwNo}</td>
            </tr>
            <tr>
                <td>이름</td>
                <td>${detail.lwNm}</td>
            </tr>
            <tr>
                <td>직급</td>
                <td>${detail.lwPosition}</td>
            </tr>
            <tr>
                <td>나이</td>
                <td>${detail.lwAge}</td>
            </tr>
            <tr>
                <td>입사일</td>
                <td>${detail.lwJoindate}</td>
            </tr>

        </table>
        <input type="submit" value="수정하기">
        <button type="submit" formaction="/litchi/workerDelete.do">삭제하기</button>
        <button type="submit" formaction="/litchi/workerList.do">목록가기</button>
    </form>

<%--
    <button><a href="/litchi/workerList.do">목록가기</a></button>--%>
</div>
</body>
</html>
