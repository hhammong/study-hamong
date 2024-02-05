package egovframework.dev.ic.service;

import egovframework.dev.ic.service.impl.IceCreamVO;

import java.util.List;

public interface IceCreamService {

    public List<IceCreamVO> iceCreamList(IceCreamVO searchVO);

    // 상세
    public IceCreamVO iceCreamDetail(IceCreamVO searchVO);

    // 등록
    void iceCreamInsert(IceCreamVO searchVO);

    // 수정
    void iceCreamUpdateAction(IceCreamVO searchVO);

    // 삭제
    void iceCreamDelete(IceCreamVO searchVO);



}
