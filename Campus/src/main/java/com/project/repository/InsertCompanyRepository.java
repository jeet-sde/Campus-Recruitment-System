package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.project.model.InsertCompanyVO;

@Repository
public interface InsertCompanyRepository extends JpaRepository<InsertCompanyVO, Long> {
    // JpaRepository provides built-in CRUD methods, no need to write SQL queries
}
