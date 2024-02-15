package egovframework.dev.signup.service.impl;

import egovframework.dev.signup.service.SignUpService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("signUpService")
public class SignUpServiceImpl implements SignUpService {

    @Resource(name = "signUpDAO")
    private SignUpDAO signUpDAO;


    @Override
    public void signUpInsert(SignUpVO formVO) {
        signUpDAO.signUpInsert(formVO);
    }


    //로그인
    @Override
    public SignUpVO login(SignUpVO signUpVO) {
        return signUpDAO.login(signUpVO);
    }
}
