package egovframework.dev.signup.service;


import egovframework.dev.signup.service.impl.SignUpVO;



public interface SignUpService {

   void signUpInsert(SignUpVO formVO);


   SignUpVO login(SignUpVO signUpVO);
}
