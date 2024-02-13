package egovframework.dev.signup.service.impl;

import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.springframework.stereotype.Repository;

@Repository("signUpDAO")
public class SignUpDAO extends EgovAbstractMapper {

    //회원가입
    public void signUpInsert(SignUpVO formVO) {
        insert("signUpDAO.signUpInsert", formVO);
    }


    //로그인처리
    public SignUpVO login(SignUpVO signUpVO) {
        return selectOne("signUpDAO.login", signUpVO);
    }
}
