<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko" data-bs-theme="auto">
<head><script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.115.4">
    <title>Checkout example · Bootstrap v5.3</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/checkout/">



    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#712cf9">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            width: 100%;
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .btn-bd-primary {
            --bd-violet-bg: #712cf9;
            --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

            --bs-btn-font-weight: 600;
            --bs-btn-color: var(--bs-white);
            --bs-btn-bg: var(--bd-violet-bg);
            --bs-btn-border-color: var(--bd-violet-bg);
            --bs-btn-hover-color: var(--bs-white);
            --bs-btn-hover-bg: #6528e0;
            --bs-btn-hover-border-color: #6528e0;
            --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
            --bs-btn-active-color: var(--bs-btn-hover-color);
            --bs-btn-active-bg: #5a23c8;
            --bs-btn-active-border-color: #5a23c8;
        }
        .bd-mode-toggle {
            z-index: 1500;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="checkout.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary">
<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
    <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
    </symbol>
    <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
    </symbol>
    <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
    </symbol>
    <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
    </symbol>
</svg>

<div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
    <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
            id="bd-theme"
            type="button"
            aria-expanded="false"
            data-bs-toggle="dropdown"
            aria-label="Toggle theme (auto)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#circle-half"></use></svg>
        <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
    </button>
    <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
                Light
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
                Dark
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
                Auto
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
    </ul>
</div>







<script>
    /*function moveFocus(next) {
        if(KeyboardEvent.code='Enter'){
            document.getElementById(next).focus();
        }
    }*/
//라디오유효성
    /*flag = false;
    for(i=0; i < litForm.luSex.length; i++){
        if(litForm.luSex[i].checked){			// 이 부분과
            str += litForm.luSex[i].value + "\n";	// 이 부분도 매우 중요한 부분
            flag = true;
            break; // 라디오박스에서는 1개만 선택될 수 있으므로 사용가능
        }
    }

    if(flag == false){
        alert("성별을 체크가 누락됐습니다.");
        return false;
    }*/
    //아이디한영정규
    function onlyNumberAndEnglish(str) {
        return /^[A-Za-z0-9][A-Za-z0-9]*$/.test(str);
    }

    //비번정규
    function strongPassword (str) {
        return /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/.test(str);
    }//최소 8글자 이상이면서, 알파벳과 숫자 및 특수문자(@$!%*#?&)가 하나 이상 포함될 경우 true, 아니면 false를 리턴한다.

    //비번일치
    function isMatch (password1, password2) {
        return password1 === password2;
    }

    //아이디유효실시간
    function idConfirm() {
        var id = document.getElementById('luId');
        var confirmMsg = document.getElementById('idCheckMessage');
        var correctColor = "#0000ff";
        var wrongColor ="#ff0000";

        if(onlyNumberAndEnglish(id.value)==true && id.value.length<=12 && id.value.length>=4){
                confirmMsg.style.color = correctColor;
                confirmMsg.innerHTML ="사용가능한 아이디입니다";
        }else{
            confirmMsg.style.color = wrongColor;
            confirmMsg.innerHTML ="4~12글자이면서, 숫자 또는 영어만 가능합니다";
        }
    }

    //비번유효실시간
    function passwordConfirm() {
        var password = document.getElementById('luPw');
        var confirmMsg = document.getElementById('passwordCheckMessage');
        var correctColor = "#0000ff";
        var wrongColor ="#ff0000";

            if(strongPassword(password.value)){
                confirmMsg.style.color = correctColor;
                confirmMsg.innerHTML ="사용가능한 비밀번호입니다";
            }else{
                confirmMsg.style.color = wrongColor;
                confirmMsg.innerHTML ="최소 8글자 이상이면서, 알파벳과 숫자 및 특수문자(@$!%*#?&)가 하나 이상 포함되어야 합니다";
            }
    }

    //비번일치실시간
    function passSameConfirm() {
        var password = document.getElementById('luPw');
        var passwordConfirm = document.getElementById('luPw2');
        var confirmMsg = document.getElementById('passwordMatchMessage');
        var correctColor = "#0000ff";
        var wrongColor ="#ff0000";

        if(password.value!='' && passwordConfirm.value!=''){

            if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
                confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
                confirmMsg.innerHTML ="비밀번호가 일치합니다";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */

            }else{
                confirmMsg.style.color = wrongColor;
                confirmMsg.innerHTML ="비밀번호가 일치하지 않습니다";
            }
        }else {confirmMsg.innerHTML ="";}
    }
    function onlyKorean(str) {
        return /^[가-힣]+$/.test(str);
    }

    //본 함수
    function creatAccount(_form) {

        if (_form.luId.value.length < 4 || _form.luId.value.length > 12 ){
            alert("4~12글자를 입력하세요");
            return false;
        }
        if (!onlyNumberAndEnglish(_form.luId.value)) {
            alert("영어와 숫자만 입력가능 한글, 특수문자 불가능");
            return false;
        }
        if (!strongPassword(_form.luPw.value)) {
            alert("최소 8자 이상 알파벳과 숫자 및 특수문자(@$!%*#?&)가 하나 이상 포함 ");
            return false;
        }
        if (_form.luPw2.value.length === 0) {
            alert("비밀번호 확인을 입력하세요");
            return false;
        }
        if (!isMatch(_form.luPw.value, _form.luPw2.value)) {
            alert("비밀번호가 일치하지 않습니다");
            return false;
        }
        if(!onlyKorean(_form.luNm.value)) {
            alert("이름은 한글만 입력가능");
            return false;
        }
        if (!telValidChk(_form.luTel.value)){
            alert("유효하지 않은 전화번호입니다");
            return false;
        }
        if (!emailValidChk(_form.luEm.value)) {
            alert("유효하지 않은 이메일입니다");
            return false;
        }
        if (!confirm("가입하시겠습니까?")){
            return false;
        }
        alert("가입이 완료되었습니다. 로그인해주세요.");

    }

    //전화번호정규
    const pattern = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
    function telValidChk(tel) {
        let x= tel.replace(/[-]/g,'');
        return pattern.test(x)
        //출처 https://taedonn.tistory.com/17
    }

    //이메일정규
    function emailValidChk(mail) {
        const emailRegex = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/;

        return emailRegex.test(mail)
    }


</script>





<div class="container">
    <main>
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="/images/practice/litchi_logo.png" alt="회사로고">
            <h2>L!TCH!</h2>
            <p class="lead">Reach Connect Change</p>
        </div>

        <div class="row g-5">
            <div class="col-md-12 col-lg-12">
                <h4 class="mb-3">회원가입</h4>

                <form name="litForm" action="/signup/signupAction.do" class="needs-validation" onsubmit="return creatAccount(this)"  method="post">

                    <div class="row g-3">
                        <div class="col-sm-12">
                            <label for="luId" class="form-label">ID</label>
                            <input type="text" onkeyup="idConfirm();" maxlength="15" class="form-control" name="luId" id="luId" placeholder="아이디" value="" required autofocus>
                            <td><h5 style="color: red;" id="idCheckMessage"></h5></td>
                            <!--<div class="invalid-feedback">
                                ID를 입력하세요.</div>-->
                        </div>
                    </div>
                    <br>
                    <div class="col-sm-12">
                        <label for="luPw" class="form-label">비밀번호</label>
                        <input type="password" onkeyup="passSameConfirm(); passwordConfirm();" maxlength="20" class="form-control" name="luPw" id="luPw" placeholder="비밀번호" value="" required>
                        <td><h5 style="color: red;" id="passwordCheckMessage"></h5></td>
                        <!--<div class="invalid-feedback">
                            Valid last name is required.</div>-->
                    </div>
                    <br>
                    <div class="col-sm-12">
                        <label for="luPw2" class="form-label">비밀번호 확인</label>
                        <input type="password" onkeyup="passSameConfirm();" maxlength="20" class="form-control" name="luPw2" id="luPw2" placeholder="비밀번호 확인" value="" required>
                        <td><h5 style="color: red;" id="passwordMatchMessage"></h5></td>
                        <!--<div class="invalid-feedback">
                            Valid last name is required.
                        </div>-->
                    </div>
                    <br>
                    <div class="col-sm-12">
                        <label for="luPwq" class="form-label" >비밀번호 찾기 질문</label>
                        <br>
                        <select name="luPwq" id="luPwq" class="form-control" required>
                            <option value="">--선택하세요--</option>
                            <option value="LC">좋아하는색?</option>
                            <option value="LF">좋아하는음식?</option>
                            <option value="LH">좋아하는취미?</option>
                            <option value="LP">존경하는위인?</option></select>
                    </div>
                    <br>
                    <div class="col-sm-12">
                        <label for="luPwa" class="form-label">비밀번호 찾기 답</label>
                        <input type="text" maxlength="15" class="form-control" name="luPwa" id="luPwa" placeholder="질문의 답을 입력하세요" value="" required>
                        <div class="invalid-feedback">
                            Valid last name is required.
                        </div>
                    </div>
                    <br>
                    <div class="col-12">
                        <label for="luNm" class="form-label">이름</label>
                        <div class="input-group has-validation">
                            <!--<span class="input-group-text">@</span>-->
                            <input type="text" maxlength="15" class="form-control" name="luNm" id="luNm" placeholder="이름을 입력하세요" required>
                            <div class="invalid-feedback">
                                Your username is required.
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="col-12">
                        <label for="luBtd" class="form-label">생년월일</label>
                        <div class="input-group has-validation">
                            <input type="date" class="form-control" name="luBtd" id="luBtd" min="1900-01-01" max="2024-01-05" placeholder="birth" required>
                            <div class="invalid-feedback">
                                Your birth is required.
                            </div>
                        </div>
                    </div>
                    <br>
                    <div><label class="form-label">성별</label><div>
                        <label for="luSex"><input type ="radio" id="luSex" name="luSex" value="male" required/>남자</label>
                        <label for="luSex2"><input type ="radio" id="luSex2" name="luSex" value="female" required/>여자</label>
                        <label for="luSex3"><input type ="radio" id="luSex3" name="luSex" value="one" required/>자웅동체</label>
                    </div></div>
                    <br>
                    <div class="col-12">
                        <label for="luTel" class="form-label">전화번호</label>
                        <div class="form-floating">
                        <input type="text" maxlength="20" class="form-control" name="luTel" id="luTel" placeholder="전화번호를 입력하세요" required><br>
                        <label for="luTel" class="form-label">*숫자만 입력</label>
                        </div>
                    </div>
                    <br>
                    <div class="col-12">
                        <label for="luEm" class="form-label">이메일 <span class="text-body-secondary"></span></label>
                        <input type="email" class="form-control" maxlength="30" name="luEm" id="luEm" placeholder="you@example.com" required>
                        <div class="invalid-feedback">
                            Please enter a valid email address for shipping updates.
                        </div>
                    </div>


                    <hr class="my-4">
                    <input class="w-100 btn btn-primary btn-lg" type="submit" value="가입하기">
                    <%--<button class="w-100 btn btn-primary btn-lg" type="submit">가입하기</button>(2024.1.22 수정)--%>
                </form>
            </div>
        </div>
    </main>
</div>

<footer class="my-5 pt-5 text-body-secondary text-center text-small">
    <p class="mb-1">&copy; since 2023 Litchi</p>
    <ul class="list-inline">
        <li class="list-inline-item"><a href="#">Privacy</a></li>
        <li class="list-inline-item"><a href="#">Terms</a></li>
        <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
</footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<script src="checkout.js"></script></body>
</html>
