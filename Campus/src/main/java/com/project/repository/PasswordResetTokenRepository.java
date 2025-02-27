package com.project.repository;

import com.project.model.PasswordResetTokenVO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PasswordResetTokenRepository extends JpaRepository<PasswordResetTokenVO, Integer> {
    PasswordResetTokenVO findByToken(String token);
}
