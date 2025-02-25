package com.project.controller;

import java.security.SecureRandom;
import java.util.Base64;

public class PasswordGeneratorController {
    public static String generateRandomPassword(int length) {
        SecureRandom random = new SecureRandom();
        byte[] bytes = new byte[length];
        random.nextBytes(bytes);
        return Base64.getEncoder().encodeToString(bytes).substring(0, length);
    }
}
