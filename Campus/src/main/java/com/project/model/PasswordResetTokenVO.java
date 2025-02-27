package com.project.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "password_reset_token_tbl")
public class PasswordResetTokenVO {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "token", nullable = false, unique = true)
    private String token;

    @OneToOne
    @JoinColumn(name = "login_id", referencedColumnName = "id", nullable = false)
    private LoginVO loginVO;

    @Column(name = "expiry_date", nullable = false)
    private Date expiryDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public LoginVO getLoginVO() {
        return loginVO;
    }

    public void setLoginVO(LoginVO loginVO) {
        this.loginVO = loginVO;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }
}
