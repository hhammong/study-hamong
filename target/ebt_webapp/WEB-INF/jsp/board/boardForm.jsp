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

        function fn_egov_addNotice() {
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
                        if (confirm("등록하시겠습니까??") == true){
                        document.upForm.action = "<c:url value='/board/boardInsert.do'/>";
                        document.upForm.submit(); }else {
                            return false;
                        }
                    }
                }

            } else {
                alert('제목은 최소 10글자 이상이어야 합니다.');
            }
        }


        /*function validateForm() {
            var titleInput = document.getElementById('hTitle');
            var form = document.getElementById('upForm');

            // 입력된 제목의 길이가 10글자 미만이면 경고창을 띄우고 등록을 막음
            if (titleInput.value.length < 10) {
                alert('제목은 최소 10글자 이상이어야 합니다.');
            } else {
                // 추가적인 검증 로직이 있다면 여기에 추가할 수 있음

                // 모든 검증을 통과하면 폼을 제출
                // 여기서는 예시로 경고창을 띄우고 폼을 제출합니다.
                alert('글이 유효합니다. 등록됩니다.');
                console.log('폼이 제출됩니다.'); // 디버그용 로그
                form.submit(); // 폼 제출
            }
        }*/
    </script>
</head>
<body>
<h1>게시판</h1>
<div class="board_list"><!--대충 디자인인듯-->
<form name="upForm" action="/board/boardInsert.do" method="post">


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
            <td>
                등록시 자동생성
            </td>
        </tr>
        <tr>
            <td>제목</td>
            <td>
                <input type="text" id="hTitle" name="hTitle" value="">
            </td>
        </tr>
        <tr>
            <td>내용</td>
            <td>
                <p><textarea cols="50" rows="10" id="hContent" name="hContent" value=""></textarea></p>
            </td>
        </tr>
        <tr>
            <td>작성자</td>
            <td>
                <input type="text" id="hName" name="hName" value="">
            </td>
        </tr>
        <tr>
            <td hidden="hidden">작성일시</td><!--지워도 될 것 같긴 한데 일단 보류-->
            <td hidden="hidden">
                <input type="date" name="hDate" value="">
            </td>
        </tr>

    </table>
    <div><input onclick="fn_egov_addNotice();" type="button" value="등록"></div>
</form>

<!--</div>-->
</body>
</html>
