package com.project.repository;

import com.project.model.PasswordResetTokenVO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface PasswordResetTokenRepository extends JpaRepository<PasswordResetTokenVO, Integer> {
    Optional<PasswordResetTokenVO> findByToken(String token); // Fix: Return Optional
}
	