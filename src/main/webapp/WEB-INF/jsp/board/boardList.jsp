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
<h1><a href="/board/boardList.do">게시판</a></h1>
<div class="board_list"><!--대충 디자인인듯-->
    <form action="<%=request.getContextPath()%>/board/boardList.do" method="get">
        <select name="sc"><!--search condition-->
            <option value="hNo" <c:if test="${param.sc=='hNo'}">selected</c:if>>번호</option>
            <option value="hTitle" <c:if test="${param.sc=='hTitle'}">selected</c:if>>제목</option>
            <option value="hContent" <c:if test="${param.sc=='hContent'}">selected</c:if>>내용</option>
            <option value="hName" <c:if test="${param.sc=='hName'}">selected</c:if>>작성자</option>
            <option value="hDate" <c:if test="${param.sc=='hDate'}">selected</c:if>>작성일시</option>
        </select>
        <input type="text" name="searchKeyword" value="${param.searchKeyword}"><!--searchKeyword-->
        <input type="submit" value="조회하기">
        <button><a href="/board/boardForm.do">등록하기</a></button>
    </form>
    <table>
        <colgroup>
            <col style="width: 20px;">
            <col style="width: 210px;">
            <col hidden="hidden" style="width: 210px;">
            <col style="width: 80px;">
            <col style="width: 80px;">
        </colgroup>
        <thead>

        <tr>
            <th>번호</th>
            <th>제목</th>
            <th hidden="hidden">내용</th>
            <th>작성자</th>
            <th>작성일시</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="item">
            <tr>
                <td>${item.hNo}</td>
                <td><a href="${path}/board/boardDetail.do?hNo=${item.hNo}">${item.hTitle}</a></td>
                <td hidden="hidden">${item.hContent}</td>
                <td>${item.hName}</td>
                <td>${item.hDate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div><%----%>
</body>
</html>
