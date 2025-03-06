package com.project.DAO;

import java.util.List;
import com.project.model.InsertCompanyVO;

public interface InsertCompanyDAO {
    void saveCompany1(InsertCompanyVO companyVO);
    List<InsertCompanyVO> findAll();
    
    
}
