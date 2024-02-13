
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
    <script>function button_update(){

            /*var titleInput = document.getElementById('hTitle');
            if (confirm("수정하시겠습니까??") == true) {    //확인
                if (titleInput.value.length < 10) {
                    alert('제목은 최소 10글자 이상이어야 합니다.');
                } else {
                    document.detailForm.action = "<c:url value='/board/boardUpdateAction.do'/>";
                    document.detailForm.submit();
                }
            }else{   //취소
                return false;
            }*/

        var titleInput = document.getElementById('hTitle');
        var hContentInput = document.getElementById('hContent');
        var hNameInput = document.getElementById('hName');




        if (titleInput.value.length >= 10) {
            if (hContentInput.value.length == 0) {
                alert("내용을입력")
            } else {
                if(hNameInput.value.length == 0){
                    alert("작성자입력")
                } else {
                    if (confirm("수정하시겠습니까??") == true){
                        document.detailForm.action = "<c:url value='/board/boardUpdateAction.do'/>";
                        document.detailForm.submit(); }else {
                        return false;
                    }
                }
            }

        } else {
            alert('제목은 최소 10글자 이상이어야 합니다.');
        }

    }</script>
</head>
<body>
<h1>게시판</h1>
<div class="board_list"><!--대충 디자인인듯-->
    <form name="detailForm" action="<%=request.getContextPath()%>/board/boardUpdateAction.do" method="post">

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
            <td><input type="number" name="hNo" value="${detail.hNo}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" id="hTitle" name="hTitle" value="${detail.hTitle}" minlength="10" required></td>
        </tr>
        <tr>
            <td>내용</td>
            <td>
                <%--<input type="text" name="hContent" value="${detail.hContent}"></td>--%>
                <textarea cols="50" rows="10" id="hContent" name="hContent" value="">${detail.hContent}</textarea>
            </td>
        </tr>
        <tr>
            <td>작성자</td>
            <td><input type="text" id="hName" name="hName" value="${detail.hName}" required></td>
        </tr>
        <tr>
            <td>작성일시</td>
            <td><input type="date" name="hDate" value="${detail.hDate}" readonly="readonly"></td>
        </tr>

    </table>
        <div><input onclick="button_update();" type="button" value="수정하기"></div>
    </form>
</div><!---->
</body>
</html>
