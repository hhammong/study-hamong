package egovframework.dev.sample.service.impl;

import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("sampleDAO")
public class SampleDAO extends EgovAbstractMapper {

    public List<SampleVO> selectDataList() {
        return selectList("SampleDAO.selectDataList");
    }


}
