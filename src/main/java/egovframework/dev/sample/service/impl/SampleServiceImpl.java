package egovframework.dev.sample.service.impl;

import egovframework.dev.sample.service.SampleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("sampleService")
public class SampleServiceImpl implements SampleService {

    @Resource(name="sampleDAO")
    private SampleDAO sampleDAO;

    @Override
    public List<SampleVO> selectList() {
        return sampleDAO.selectDataList();
    }
}
