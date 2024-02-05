package egovframework.dev.signup.service.impl;

import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.springframework.stereotype.Repository;

@Repository("signUpDAO")
public class SignUpDAO extends EgovAbstractMapper {

    public void signUpInsert(SignUpVO formVO) {
        insert("signUpDAO.signUpInsert", formVO);
    }


}
