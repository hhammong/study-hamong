package egovframework.dev.board.web;

import egovframework.dev.board.service.BoardService;
import egovframework.dev.board.service.impl.BoardVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class BoardController {

    @Resource(name = "boardListService")
    private BoardService boardListService;


    @RequestMapping(value = "/board/boardList.do")
    public String boardPage(ModelMap model, BoardVO searchVO) {
        System.out.println(1);

        List<BoardVO> list = boardListService.boardList(searchVO);
        model.addAttribute("list", list);
        list.forEach(System.out::println);

        return "board/boardList";
    }

    // 상세
    @RequestMapping(value = "/board/boardDetail.do")
    public String detailPage(ModelMap model, BoardVO searchVO) {
        BoardVO detail = boardListService.boardDetail(searchVO);
        model.addAttribute("detail", detail);
        return "/board/boardDetail";
    }

    // 등록화면
    @RequestMapping(value = "/board/boardForm.do")
    public String formPage() {
        return "/board/boardForm";
    }

    // 등록처리
    @RequestMapping(value = "/board/boardInsert.do")
    public String insertPage(BoardVO searchVO) {
        boardListService.boardInsert(searchVO);
        return "redirect:/board/boardList.do";
    }

    // 수정화면
    @RequestMapping(value = "/board/boardUpdate.do")
    public String updatePage(ModelMap model, BoardVO searchVO) {
        BoardVO detail = boardListService.boardDetail(searchVO);
        model.addAttribute("detail", detail);
        return "/board/boardDetailUpdate";
    }

    // 수정처리
    @RequestMapping(value = "/board/boardUpdateAction.do")
    public String updateActionPage(BoardVO searchVO) {
        boardListService.boardUpdateAction(searchVO);
        return "redirect:/board/boardDetail.do?hNo=" + searchVO.gethNo();
    }

    // 삭제
    @RequestMapping(value = "/board/boardDelete.do")
    public String deletePage(BoardVO searchVO) {
        boardListService.boardDelete(searchVO);
        return "redirect:/board/boardList.do";
    }

}
