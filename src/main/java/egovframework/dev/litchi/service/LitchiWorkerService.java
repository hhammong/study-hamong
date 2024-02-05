package egovframework.dev.litchi.service;

import egovframework.dev.litchi.service.impl.LitchiWorkerVO;

import java.util.List;

public interface LitchiWorkerService {


    public List<LitchiWorkerVO> litchiWorkerList(LitchiWorkerVO searchVO);

	// 상세
    LitchiWorkerVO detailLitchiWorkerList(LitchiWorkerVO a);
    // 등록
    void insertLitchiWorker(LitchiWorkerVO formVO);

    // 수정
    void updateActionLitchiWorker(LitchiWorkerVO formVO);

    //삭제
    void deleteLitchiWorkerList(LitchiWorkerVO deleteVO);

}
