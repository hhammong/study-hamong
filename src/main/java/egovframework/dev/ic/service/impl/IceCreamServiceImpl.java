package egovframework.dev.ic.service.impl;

import egovframework.dev.ic.service.IceCreamService;
//import egovframework.dev.ic.service.impl.IceCreamDAO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("iceCreamListService")
public class IceCreamServiceImpl implements IceCreamService {

    @Resource(name = "iceCreamDAO")
    private IceCreamDAO iceCreamDAO;


    @Override
    public List<IceCreamVO> iceCreamList(IceCreamVO searchVO) {
        return iceCreamDAO.iceCreamList(searchVO);
    }

    @Override
    public IceCreamVO iceCreamDetail(IceCreamVO searchVO) {
        return iceCreamDAO.iceCreamDetail(searchVO);
    }

    // 등록
    @Override
    public void iceCreamInsert(IceCreamVO searchVO) {
        iceCreamDAO.iceCreamInsert(searchVO);
    }

    // 수정
    @Override
    public void iceCreamUpdateAction(IceCreamVO searchVO) {
        iceCreamDAO.iceCreamUpdateAction(searchVO);
    }

    @Override
    public void iceCreamDelete(IceCreamVO searchVO) {
        iceCreamDAO.iceCreamDelete(searchVO);
    }
}
