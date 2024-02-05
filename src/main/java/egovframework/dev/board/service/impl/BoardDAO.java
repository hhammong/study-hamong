package egovframework.dev.board.service.impl;

import egovframework.dev.ic.service.impl.IceCreamVO;
import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository("boardDAO")
public class BoardDAO extends EgovAbstractMapper {

    public List<BoardVO> boardList(BoardVO searchVO) {
        return selectList("boardDAO.selectBoardList", searchVO);
    }

    // 상세
    public BoardVO boardDetail(BoardVO searchVO) {
        return selectOne("boardDAO.selectBoardDetail", searchVO);
    }

    public void boardInsert(BoardVO searchVO) {
        insert("boardDAO.selectBoardInsert", searchVO);

    }

    // 수정
    public void boardUpdateAction(BoardVO searchVO) {
        update("boardDAO.selectBoardUpdateAction", searchVO);
    }

    public void boardDelete(BoardVO searchVO) {
        delete("boardDAO.selectBoardDelete", searchVO);
    }

}
