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
    <form action="<%=request.getContextPath()%>/ic/iceCreamUpdateAction.do" method="post">

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
            <td><input type="number" name="icNo" value="${detail.icNo}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>상품명</td>
            <td><input type="text" name="icNm" value="${detail.icNm}"></td>
        </tr>
        <tr>
            <td>가격</td>
            <td><input type="number" name="icPrice" value="${detail.icPrice}"></td>
        </tr>
        <tr>
            <td>제조회사</td>
            <td><input type="text" name="icComp" value="${detail.icComp}"></td>
        </tr>
        <tr>
            <td>출시일</td>
            <td><input type="" name="icDate" value="${detail.icDate}"></td>
        </tr>

    </table>

        <div><input type="submit" value="수정하기"></div>
        <%--<button><a href="${path}/litchi/worker.do?lwNo=${detail.lwNo}">취소하기</a></button>--%>
    </form>
<!--</div>-->
</body>
</html>
