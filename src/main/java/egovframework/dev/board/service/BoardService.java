package egovframework.dev.board.service;

import egovframework.dev.board.service.impl.BoardVO;

import java.util.List;

public interface BoardService {

    public List<BoardVO> boardList(BoardVO searchVO);

    // 상세
    public BoardVO boardDetail(BoardVO searchVO);

    // 등록
    public void boardInsert(BoardVO searchVO);

    // 수정
    public void boardUpdateAction(BoardVO searchVO);

    // 삭제
    public void boardDelete(BoardVO searchVO);



}
