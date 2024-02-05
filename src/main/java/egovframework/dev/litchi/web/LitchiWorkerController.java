package egovframework.dev.litchi.web;


import egovframework.dev.litchi.service.LitchiWorkerService;
import egovframework.dev.litchi.service.impl.LitchiWorkerVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class LitchiWorkerController {

    @Resource(name = "litchiWorkerListService")
    private LitchiWorkerService litchiWorkerListService;


    @RequestMapping(value = "/litchi/workerList.do")
    public String litchiPage(ModelMap model, LitchiWorkerVO searchVO) {

        List<LitchiWorkerVO> list = litchiWorkerListService.litchiWorkerList(searchVO);

        model.addAttribute("list", list);

        return "litchi/workerList";
    }

    // 상세(단건)
    @RequestMapping(value = "/litchi/worker.do")
    public String detailPage(ModelMap model, LitchiWorkerVO detailVO) {
        LitchiWorkerVO detail = litchiWorkerListService.detailLitchiWorkerList(detailVO);
        model.addAttribute("detail", detail);
        return "/litchi/workerListDetail";
    }


    // 등록화면
    @RequestMapping(value = "/litchi/workerWrite.do")
    public String workerWrite() {
        return "litchi/workerForm";
    }

    // 등록처리
    @RequestMapping(value = "/litchi/workerWriteAction.do")
    public String workerWriteAction(LitchiWorkerVO formVO) {
        litchiWorkerListService.insertLitchiWorker(formVO);
        return "redirect:/litchi/workerList.do";
    }

    // 수정화면
    @RequestMapping(value = "/litchi/workerUpdate.do")
    public String workerUpdate(ModelMap model, LitchiWorkerVO upVO) {
        LitchiWorkerVO detail = litchiWorkerListService.detailLitchiWorkerList(upVO);
        model.addAttribute("detail", detail);
        return "litchi/workerListDetailUpdate";
    }

    // 수정처리
    @RequestMapping(value = "/litchi/workerUpdateAction.do")
    public String workerUpdate(LitchiWorkerVO detailVO) {
        litchiWorkerListService.updateActionLitchiWorker(detailVO);
        return "redirect:/litchi/worker.do?lwNo=" + detailVO.getLwNo();
    }

    // 삭제
    @RequestMapping(value = "/litchi/workerDelete.do")
    public String workerDelete(LitchiWorkerVO upVO) {
        litchiWorkerListService.deleteLitchiWorkerList(upVO);
        return "redirect:/litchi/workerList.do";
    }

}
