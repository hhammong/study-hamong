package egovframework.dev.signup.service.impl;

import egovframework.dev.signup.service.SignUpService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("signUpService")
public class SignUpServiceImpl implements SignUpService {

    @Resource(name = "signUpDAO")
    private SignUpDAO signUpDAO;


    @Override
    public void signUpInsert(SignUpVO formVO) {
        signUpDAO.signUpInsert(formVO);
    }

    @Override
    public boolean login(SignUpVO signUpVO) {
        SignUpVO loginMember = signUpDAO.login(signUpVO);
        if (loginMember != null) {
            return true;
        } else {
            return false;
        }
    }
}
