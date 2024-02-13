package egovframework.dev.signup.web;

import egovframework.dev.signup.service.SignUpService;
import egovframework.dev.signup.service.impl.SignUpVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class SignUpController {

    @Resource(name = "signUpService")
    private SignUpService signUpService;

    // 등록화면
    @RequestMapping(value = "/signup/signUp.do")
    public String insert() {
        return "signup/signUp";
    }

    // 등록처리
    @RequestMapping(value = "/signup/signupAction.do")
    public String insertAction(SignUpVO formVO) {
        signUpService.signUpInsert(formVO);
        return "redirect:/signup/signIn.do";
    }

    //로그인 화면
    @RequestMapping(value = "/signup/signIn.do")
    public String loginForm() {
        return "signup/signIn";
    }

    //로그인 처리
    @RequestMapping(value = "/signup/login.do")
    public String login(@ModelAttribute SignUpVO signUpVO, HttpSession session) {
        boolean loginResult = signUpService.login(signUpVO);
        if (loginResult) {
            session.setAttribute("loginId", signUpVO.getLuId());
            return "signup/home";
        } else {
            return "redirect:/signup/signIn.do";
        }

    }

    //로그아웃
    @RequestMapping(value = "/logout.do")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/signup/signIn.do";
    }


}