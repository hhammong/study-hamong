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
    <form action="<%=request.getContextPath()%>/ic/iceCreamList.do" method="get">
        <select name="sc"><!--search condition-->
            <option value="icNo" <c:if test="${param.sc=='icNo'}">selected</c:if>>번호</option>
            <option value="icNm" <c:if test="${param.sc=='icNm'}">selected</c:if>>상품명</option>
            <option value="icPrice" <c:if test="${param.sc=='icPrice'}">selected</c:if>>가격</option>
            <option value="icComp" <c:if test="${param.sc=='icComp'}">selected</c:if>>제조회사</option>
            <option value="icDate" <c:if test="${param.sc=='icDate'}">selected</c:if>>출시일</option>
        </select>
        <input type="text" name="searchKeyword" value="${param.searchKeyword}"><!--searchKeyword-->
        <input type="submit" value="조회하기">
        <button><a href="/ic/iceCreamForm.do">등록하기</a></button>
    </form>
    <table>
        <%--<colgroup>
            <col style="width: 210px;">
            <col style="width: 210px;">
            <col style="width: 210px;">
            <col style="width: 210px;">
            <col style="width: 210px;">
        </colgroup>--%>
        <thead>
        <tr>
            <th>번호</th>
            <th>상품명</th>
            <th>가격</th>
            <th>제조회사</th>
            <th>출시연도</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="item">
            <tr>
                <td>${item.icNo}</td>
                <td><a href="${path}/ic/iceCreamDetail.do?icNo=${item.icNo}">${item.icNm}</a></td>
                <td>${item.icPrice}</td>
                <td>${item.icComp}</td>
                <td>${item.icDate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
<%--</div>--%>
</body>
</html>
