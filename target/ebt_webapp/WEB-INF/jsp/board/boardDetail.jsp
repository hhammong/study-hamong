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
    <script>
        function button_event(){
        if (confirm("정말 삭제하시겠습니까??") == true){    //확인
            document.detailForm.action = "<c:url value='/board/boardDelete.do'/>";
            document.detailForm.submit();
        }else{   //취소
            return false;
        }
        }

    </script>
</head>
<body>
<h1>게시판</h1>
<div class="board_list"><!--대충 디자인인듯-->
   <form name="detailForm" action="<%=request.getContextPath()%>${path}/board/boardUpdate.do" method="post">
        <input type="hidden" name="hNo" value="${detail.hNo}">
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
                <td>${detail.hNo}</td>
            </tr>
            <tr>
                <td>제목</td>
                <td>${detail.hTitle}</td>
            </tr>
            <tr>
                <td>내용</td>
                <td><p>${detail.hContent}</p></td>
            </tr>
            <tr>
                <td>작성자</td>
                <td>${detail.hName}</td>
            </tr>
            <tr>
                <td>작성일시</td>
                <td>${detail.hDate}</td>
            </tr>

        </table>
        <input type="submit" value="수정하기">
        <input onclick="button_event();" type="button" value="삭제하기"></button>
        <button type="submit" formaction="/board/boardList.do">목록가기</button>
    </form>
</div><!---->
</body>
</html>
