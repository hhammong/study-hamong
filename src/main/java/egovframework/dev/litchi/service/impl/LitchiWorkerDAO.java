package egovframework.dev.litchi.service.impl;

import egovframework.let.cop.com.service.BoardUseInf;
import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("litchiWorkerDAO")
public class LitchiWorkerDAO extends EgovAbstractMapper {

    public List<LitchiWorkerVO> litchiWorkerList(LitchiWorkerVO searchVO) {
        return selectList("litchiWorkerDAO.selectLitchiWorkerList", searchVO);


    }


    public LitchiWorkerVO detailLitchiWorkerList(LitchiWorkerVO searchVO) {

        return selectOne("litchiWorkerDAO.detailLitchiWorkerList", searchVO);
    }

    //등록
    public void insertLitchiWorker(LitchiWorkerVO formVO) {
        insert("litchiWorkerDAO.formLitchiWorkerList", formVO);
    }

    //수정
    public void updateActionLitchiWorker(LitchiWorkerVO formVO) {
        update("litchiWorkerDAO.updateLitchiWorker", formVO);
    }

    //삭제
    public void deleteLitchiWorkerList(LitchiWorkerVO formVO) {
        delete("litchiWorkerDAO.deleteLitchiWorkerList", formVO);
    }


    }
