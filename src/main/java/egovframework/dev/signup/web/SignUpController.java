package egovframework.dev.signup.web;

import egovframework.dev.signup.service.SignUpService;
import egovframework.dev.signup.service.impl.SignUpVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

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
    public String login() {
        return "signup/signIn";
    }

    // 로그인 처리
    /*@RequestMapping(value = "/signup/signInAction.do")
    public String signInAction(SignUpVO formVO) {
        signUpService.signUpInsert(formVO);
        return "redirect:/signup/signUp.do";
    }*/

}
