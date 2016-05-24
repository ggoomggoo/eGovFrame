package egovframework.lab.dataaccess.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.lab.dataaccess.service.EmpVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("empDAO")
public class EmpDAO extends EgovAbstractDAO {
    
   	public void insertEmp(EmpVO vo) {
        insert("insertEmp", vo);
    }

    public int updateEmp(EmpVO vo) {
        return update("updateEmp", vo);
    }

    public int deleteEmp(EmpVO vo) {
        return delete("deleteEmp", vo);
    }

    public EmpVO selectEmp(EmpVO vo) {
        return (EmpVO) selectByPk("selectEmp", vo);
        //return (EmpVO) selectByPk("selectEmpUsingCacheModelLRU", vo);
    }

    @SuppressWarnings("unchecked")
    public List<EmpVO> selectEmpList(EmpVO searchVO) {
        return (List<EmpVO>) list("selectEmpList", searchVO);
    }
}