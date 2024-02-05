package egovframework.dev.ic.service.impl;


import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("iceCreamDAO")
public class IceCreamDAO extends EgovAbstractMapper {


    public List<IceCreamVO> iceCreamList(IceCreamVO searchVO) {
        return selectList("iceCreamDAO.selectIceCreamList", searchVO);

    }

    // 상세
    public IceCreamVO iceCreamDetail(IceCreamVO searchVO) {
        return selectOne("iceCreamDAO.selectIceCreamDetail", searchVO);

    }

    //등록
    void iceCreamInsert(IceCreamVO searchVO) {
        insert("iceCreamDAO.selectIceCreamInsert", searchVO);

    }

    // 수정
    public void iceCreamUpdateAction(IceCreamVO searchVO) {
        update("iceCreamDAO.selectIceCreamUpdateAction", searchVO);
    }

    public void iceCreamDelete(IceCreamVO searchVO) {
        delete("iceCreamDAO.selectIceCreamDelete", searchVO);
    }


}
