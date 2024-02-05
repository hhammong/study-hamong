package egovframework.dev.ic.web;

import egovframework.dev.ic.service.IceCreamService;
import egovframework.dev.ic.service.impl.IceCreamVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class IceCreamController {


    @Resource(name = "iceCreamListService")
    private IceCreamService iceCreamListService;


    @RequestMapping(value = "/ic/iceCreamList.do")
    public String iceCreamPage(ModelMap model, IceCreamVO searchVO) {

        List<IceCreamVO> list = iceCreamListService.iceCreamList(searchVO);

        model.addAttribute("list", list);

        return "/ic/iceCreamList";
    }

    // 상세
    @RequestMapping(value = "/ic/iceCreamDetail.do")
    public String detailPage(ModelMap model, IceCreamVO searchVO) {
        IceCreamVO detail = iceCreamListService.iceCreamDetail(searchVO);
        model.addAttribute("detail", detail);
        return "/ic/iceCreamDetail";
    }


    // 등록화면
    @RequestMapping(value = "/ic/iceCreamForm.do")
    public String formPage() {
        return "/ic/iceCreamForm";
    }

    // 등록처리
    @RequestMapping(value = "/ic/iceCreamInsert.do")
    public String insertPage(IceCreamVO searchVO) {
        iceCreamListService.iceCreamInsert(searchVO);
        return "redirect:/ic/iceCreamList.do";
    }

    // 수정화면
    @RequestMapping(value = "/ic/iceCreamUpdate.do")
    public String updatePage(ModelMap model, IceCreamVO searchVO) {
        IceCreamVO detail = iceCreamListService.iceCreamDetail(searchVO);
        model.addAttribute("detail", detail);
        return "ic/iceCreamDetailUpdate";
    }

    // 수정처리
    @RequestMapping(value = "/ic/iceCreamUpdateAction.do")
    public String updateActionPage(IceCreamVO searchVO) {
        iceCreamListService.iceCreamUpdateAction(searchVO);
        return "redirect:/ic/iceCreamDetail.do?icNo=" + searchVO.getIcNo();
    }

    // 삭제
    @RequestMapping(value = "/ic/iceCreamDelete.do")
    public String deletePage(IceCreamVO searchVO) {
        iceCreamListService.iceCreamDelete(searchVO);
        return "redirect:/ic/iceCreamList.do";
    }

}
