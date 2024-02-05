package egovframework.dev.board.service.impl;

import egovframework.dev.board.service.BoardService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service("boardListService")
public class BoardServiceImpl implements BoardService {

    @Resource(name = "boardDAO")
    private BoardDAO boardDAO;


    @Override
    public List<BoardVO> boardList(BoardVO searchVO) {
        return boardDAO.boardList(searchVO);
    }

    // 상세
    @Override
    public BoardVO boardDetail(BoardVO searchVO) {
        return boardDAO.boardDetail(searchVO);
    }

    // 등록
    @Override
    public void boardInsert(BoardVO searchVO) {
        boardDAO.boardInsert(searchVO);
    }

    // 수정
    @Override
    public void boardUpdateAction(BoardVO searchVO) {
        boardDAO.boardUpdateAction(searchVO);
    }

    // 삭제
    @Override
    public void boardDelete(BoardVO searchVO) {
        boardDAO.boardDelete(searchVO);
    }
}
