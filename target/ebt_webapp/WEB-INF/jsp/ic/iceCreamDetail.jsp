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
<h1>아이스크림</h1>
<!--<div class="board_list">대충 디자인인듯-->
   <form action="<%=request.getContextPath()%>${path}/ic/iceCreamUpdate.do" method="post">
        <input type="hidden" name="icNo" value="${detail.icNo}">
        <table>
            <colgroup>
                <col style="width: 80px;">
                <col style="width: 80px;">
                <col style="width: 80px;">
                <col style="width: 80px;">
                <col style="width: 80px;">
            </colgroup>

            <tr>
                <td>번호</td>
                <td>${detail.icNo}</td>
            </tr>
            <tr>
                <td>상품명</td>
                <td>${detail.icNm}</td>
            </tr>
            <tr>
                <td>가격</td>
                <td>${detail.icPrice}</td>
            </tr>
            <tr>
                <td>제조회사</td>
                <td>${detail.icComp}</td>
            </tr>
            <tr>
                <td>출시일</td>
                <td>${detail.icDate}</td>
            </tr>

        </table>
        <input type="submit" value="수정하기">
        <button type="submit" formaction="/ic/iceCreamDelete.do">삭제하기</button>
        <button type="submit" formaction="/ic/iceCreamList.do">목록가기</button>
    </form>

<%--
    <button><a href="/litchi/workerList.do">목록가기</a></button>--%>
<%--</div>--%>
</body>
</html>
