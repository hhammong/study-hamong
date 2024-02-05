package egovframework.dev.litchi.service.impl;

import egovframework.dev.litchi.service.LitchiWorkerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("litchiWorkerListService")
public class LitchiWorkerServiceImpl implements LitchiWorkerService {

    @Resource(name = "litchiWorkerDAO")
    private LitchiWorkerDAO litchiWorkerDAO;

    @Override
    public List<LitchiWorkerVO> litchiWorkerList(LitchiWorkerVO searchVO) {
        return litchiWorkerDAO.litchiWorkerList(searchVO);
    }

    @Override
    public LitchiWorkerVO detailLitchiWorkerList(LitchiWorkerVO detailVO) {
        return litchiWorkerDAO.detailLitchiWorkerList(detailVO);
    }

    //등록
    @Override
    public void insertLitchiWorker(LitchiWorkerVO formVO) {
        litchiWorkerDAO.insertLitchiWorker(formVO);
    }

    // 수정
    @Override
    public void updateActionLitchiWorker(LitchiWorkerVO formVO) {
        litchiWorkerDAO.updateActionLitchiWorker(formVO);
    }

    // 삭제
    @Override
    public void deleteLitchiWorkerList(LitchiWorkerVO deleteVO) {
        litchiWorkerDAO.deleteLitchiWorkerList(deleteVO);

    }


}
/*private int factorial(int value) {
        return factorial(value / 2);
    }
    */