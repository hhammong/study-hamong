package egovframework.dev.sample.web;


import egovframework.dev.sample.service.SampleService;
import egovframework.dev.sample.service.impl.SampleVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class SampleController {

    @Resource(name = "sampleService")
    private SampleService sampleService;

    @RequestMapping(value = "/sample/test.do")
    public String samplePage(ModelMap model) {

        List<SampleVO> list = sampleService.selectList();

        model.addAttribute("list", list);


        //WEB - INF/jsp/sample/sample.jsp
        return "sample/test";
    }

}
