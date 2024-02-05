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
    <form action="/litchi/workerWriteAction.do" method="post">


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
            <td>
                등록시 자동생성
            </td>
        </tr>
        <tr>
            <td>이름</td>
            <td>
                <input type="text" name="inNm" value=""><!--이름넣어-->
            </td>
        </tr>
        <tr>
            <td>직급</td>
            <td>
                <input type="text" name="inPosition" value="">
            </td>
        </tr>
        <tr>
            <td>나이</td>
            <td>
                <input type="number" name="inAge" value="">
            </td>
        </tr>
        <tr>
            <td>입사일</td>
            <td>
                <input type="date" name="inJoindate" value="">
            </td>
        </tr>

    </table>
        <div><input type="submit" value="등록"></div>
    </form>

</div>
</body>
</html>
